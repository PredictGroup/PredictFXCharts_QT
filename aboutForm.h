/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   aboutForm.h
 * Author: andy
 *
 * Created on April 2, 2017, 12:39 PM
 */

#ifndef _ABOUTFORM_H
#define _ABOUTFORM_H

#include "ui_aboutForm.h"

class aboutForm : public QDialog {
    Q_OBJECT
public:
    aboutForm();
    virtual ~aboutForm();
private:
    Ui::aboutForm widget;
};

#endif /* _ABOUTFORM_H */
