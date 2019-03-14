/********************************************************************************
** Form generated from reading UI file 'aboutForm.ui'
**
** Created by: Qt User Interface Compiler version 5.7.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_ABOUTFORM_H
#define UI_ABOUTFORM_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QDialog>
#include <QtWidgets/QDialogButtonBox>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>

QT_BEGIN_NAMESPACE

class Ui_aboutForm
{
public:
    QDialogButtonBox *buttonBox;
    QLabel *label;

    void setupUi(QDialog *aboutForm)
    {
        if (aboutForm->objectName().isEmpty())
            aboutForm->setObjectName(QStringLiteral("aboutForm"));
        aboutForm->resize(400, 300);
        QIcon icon;
        icon.addFile(QStringLiteral(":/images/icon_vip.png"), QSize(), QIcon::Normal, QIcon::Off);
        aboutForm->setWindowIcon(icon);
        buttonBox = new QDialogButtonBox(aboutForm);
        buttonBox->setObjectName(QStringLiteral("buttonBox"));
        buttonBox->setGeometry(QRect(30, 240, 341, 32));
        buttonBox->setOrientation(Qt::Horizontal);
        buttonBox->setStandardButtons(QDialogButtonBox::Cancel|QDialogButtonBox::Ok);
        label = new QLabel(aboutForm);
        label->setObjectName(QStringLiteral("label"));
        label->setGeometry(QRect(10, 10, 381, 17));

        retranslateUi(aboutForm);
        QObject::connect(buttonBox, SIGNAL(accepted()), aboutForm, SLOT(accept()));
        QObject::connect(buttonBox, SIGNAL(rejected()), aboutForm, SLOT(reject()));

        QMetaObject::connectSlotsByName(aboutForm);
    } // setupUi

    void retranslateUi(QDialog *aboutForm)
    {
        aboutForm->setWindowTitle(QApplication::translate("aboutForm", "About", Q_NULLPTR));
        label->setText(QApplication::translate("aboutForm", "Developed by Andy Grishin", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class aboutForm: public Ui_aboutForm {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_ABOUTFORM_H
