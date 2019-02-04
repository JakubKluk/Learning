#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "include/Matrix.hpp"
#include "src/Matrix.cpp"
#include "include/Shape.hpp"
#include "include/Matrix_Functions.hpp"
#include "src/Matrix_Functions.cpp"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}

std::vector<std::vector<float>> string_to_matrix(QString text)
{
    std::vector<std::vector<float>> vect;
    std::vector<float> helper;
    QString temp;
    int j = 0;
    float sign = 1;
    for (auto &i : text)
    {
        j +=1;
        if (i!="," && i!="\n" && i!=" " && i!="-")
        {
            temp.append(i);
        } else if(i=="-")
        {
            sign = -1;
        } else if (i==",")
        {
            helper.push_back(sign*temp.toFloat());
            temp.clear();
        } else if(j==text.length()-2)
        {
            helper.push_back(temp.toFloat());
            temp.clear();
            vect.push_back(helper);
            helper.clear();
            sign = 1;
        } else if (i=="\n")
        {
            helper.push_back(sign*temp.toFloat());
            temp.clear();
            vect.push_back(helper);
            helper.clear();
            sign = 1;
        }
    }
    if(text.back()!=" " && text.back()!="\n")
    {
        helper.push_back(sign*temp.toFloat());
        temp.clear();
        vect.push_back(helper);
        helper.clear();
    }
    return vect;
}

void MainWindow::on_DetButton_clicked()
{
    QString text = ui->Line->toPlainText();
    std::vector<std::vector<float>> vect = string_to_matrix(text);
    ui->Line->clear();
    Matrix<float> mat(vect);
    float determinant;
    determinant = det(mat);
    ui->Line->setText(QString::number(determinant));
}



