#!/usr/bin/python
# -*- coding: utf-8 -*-
import re
import urllib.request
import xml.etree.ElementTree as ET
from typing import List
from abc import ABC
from abc import abstractmethod


# ---

class News:
    pattern = r'\d{2}[A-Z][a-z]{2}\d{4}'

    def __init__(self, title: str, pub_date: str) -> None:
        self.title = title
        self.pub_date = pub_date

    @property
    def pub_date(self):
        return self.__pub_date

    @pub_date.setter
    def pub_date(self, pub_date):
        if re.fullmatch(r'\d{2} [A-Z][a-z]{2} \d{4}', pub_date):
            self.__pub_date = pub_date
        else:
            raise ValueError

    def __str__(self) -> str:
        return '[{0}] {1}'.format(self.pub_date, self.title)


class NewsFeeder(ABC):
    def __init__(self, rss_url: str) -> None:
        """
        Parametry:
         rss_url -- URL strony zawierającej strumień RSS
        """
        with urllib.request.urlopen(rss_url) as response:
            self.rss_url = response.read()

    @abstractmethod
    def get_feed(self) -> List[News]:
        pass


class BBCNewsFeeder(NewsFeeder):
    def __init__(self, rss_url) -> None:
        super().__init__(rss_url)

    def get_feed(self) -> List[News]:
        root = ET.fromstring(self.rss_url)
        titles = []
        dates = []
        NEWS = []
        for x in root.iter('title'):
            titles.append(x.text)
        for x in root.iter('pubDate'):
            dates.append(x.text[5:16])
        for x in range(0, len(dates)):
            NEWS.append(News(titles[x+2], dates[x]))

        return NEWS
