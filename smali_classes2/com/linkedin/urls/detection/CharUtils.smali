.class public Lcom/linkedin/urls/detection/CharUtils;
.super Ljava/lang/Object;
.source "CharUtils.java"


# direct methods
.method public static isAlpha(C)Z
    .locals 1

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAlphaNumeric(C)Z
    .locals 1

    .line 43
    invoke-static {p0}, Lcom/linkedin/urls/detection/CharUtils;->isAlpha(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/linkedin/urls/detection/CharUtils;->isNumeric(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isDot(C)Z
    .locals 1

    const/16 v0, 0x2e

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isHashtagAlphaChars(C)Z
    .locals 1

    .line 113
    invoke-static {p0}, Lcom/linkedin/urls/detection/CharUtils;->isAlpha(C)Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-static {p0}, Lcom/linkedin/urls/detection/CharUtils;->isLatinAccentsChars(C)Z

    move-result v0

    if-nez v0, :cond_2e

    const/16 v0, 0x400

    if-lt p0, v0, :cond_0

    const/16 v0, 0x4ff

    if-le p0, v0, :cond_2e

    :cond_0
    const/16 v0, 0x500

    if-lt p0, v0, :cond_1

    const/16 v0, 0x527

    if-le p0, v0, :cond_2e

    :cond_1
    const/16 v0, 0x2de0

    if-lt p0, v0, :cond_2

    const/16 v0, 0x2dff

    if-le p0, v0, :cond_2e

    :cond_2
    const v0, 0xa640

    if-lt p0, v0, :cond_3

    const v0, 0xa69f

    if-le p0, v0, :cond_2e

    :cond_3
    const/16 v0, 0x591

    if-lt p0, v0, :cond_4

    const/16 v0, 0x5bf

    if-le p0, v0, :cond_2e

    :cond_4
    const/16 v0, 0x5c1

    if-lt p0, v0, :cond_5

    const/16 v0, 0x5c2

    if-le p0, v0, :cond_2e

    :cond_5
    const/16 v0, 0x5c4

    if-lt p0, v0, :cond_6

    const/16 v0, 0x5c5

    if-le p0, v0, :cond_2e

    :cond_6
    const/16 v0, 0x5c7

    if-eq p0, v0, :cond_2e

    const/16 v0, 0x5d0

    if-lt p0, v0, :cond_7

    const/16 v0, 0x5ea

    if-le p0, v0, :cond_2e

    :cond_7
    const/16 v0, 0x5f0

    if-lt p0, v0, :cond_8

    const/16 v0, 0x5f4

    if-le p0, v0, :cond_2e

    :cond_8
    const v0, 0xfb1d

    if-lt p0, v0, :cond_9

    const v0, 0xfb28

    if-le p0, v0, :cond_2e

    :cond_9
    const v0, 0xfb2a

    if-lt p0, v0, :cond_a

    const v0, 0xfb36

    if-le p0, v0, :cond_2e

    :cond_a
    const v0, 0xfb38

    if-lt p0, v0, :cond_b

    const v0, 0xfb3c

    if-le p0, v0, :cond_2e

    :cond_b
    const v0, 0xfb3e

    if-eq p0, v0, :cond_2e

    const v0, 0xfb40

    if-lt p0, v0, :cond_c

    const v0, 0xfb41

    if-le p0, v0, :cond_2e

    :cond_c
    const v0, 0xfb43

    if-lt p0, v0, :cond_d

    const v0, 0xfb44

    if-le p0, v0, :cond_2e

    :cond_d
    const v0, 0xfb46

    if-lt p0, v0, :cond_e

    const v0, 0xfb4f

    if-le p0, v0, :cond_2e

    :cond_e
    const/16 v0, 0x610

    if-lt p0, v0, :cond_f

    const/16 v0, 0x61a

    if-le p0, v0, :cond_2e

    :cond_f
    const/16 v0, 0x620

    if-lt p0, v0, :cond_10

    const/16 v0, 0x65f

    if-le p0, v0, :cond_2e

    :cond_10
    const/16 v0, 0x66e

    if-lt p0, v0, :cond_11

    const/16 v0, 0x6d3

    if-le p0, v0, :cond_2e

    :cond_11
    const/16 v0, 0x6d5

    if-lt p0, v0, :cond_12

    const/16 v0, 0x6dc

    if-le p0, v0, :cond_2e

    :cond_12
    const/16 v0, 0x6de

    if-lt p0, v0, :cond_13

    const/16 v0, 0x6e8

    if-le p0, v0, :cond_2e

    :cond_13
    const/16 v0, 0x6ea

    if-lt p0, v0, :cond_14

    const/16 v0, 0x6ef

    if-le p0, v0, :cond_2e

    :cond_14
    const/16 v0, 0x6fa

    if-lt p0, v0, :cond_15

    const/16 v0, 0x6fc

    if-le p0, v0, :cond_2e

    :cond_15
    const/16 v0, 0x6ff

    if-eq p0, v0, :cond_2e

    const/16 v0, 0x750

    if-lt p0, v0, :cond_16

    const/16 v0, 0x77f

    if-le p0, v0, :cond_2e

    :cond_16
    const/16 v0, 0x8a0

    if-eq p0, v0, :cond_2e

    const/16 v0, 0x8a2

    if-lt p0, v0, :cond_17

    const/16 v0, 0x8ac

    if-le p0, v0, :cond_2e

    :cond_17
    const/16 v0, 0x8e4

    if-lt p0, v0, :cond_18

    const/16 v0, 0x8fe

    if-le p0, v0, :cond_2e

    :cond_18
    const v0, 0xfb50

    if-lt p0, v0, :cond_19

    const v0, 0xfbb1

    if-le p0, v0, :cond_2e

    :cond_19
    const v0, 0xfbd3

    if-lt p0, v0, :cond_1a

    const v0, 0xfd3d

    if-le p0, v0, :cond_2e

    :cond_1a
    const v0, 0xfd50

    if-lt p0, v0, :cond_1b

    const v0, 0xfd8f

    if-le p0, v0, :cond_2e

    :cond_1b
    const v0, 0xfd92

    if-lt p0, v0, :cond_1c

    const v0, 0xfdc7

    if-le p0, v0, :cond_2e

    :cond_1c
    const v0, 0xfdf0

    if-lt p0, v0, :cond_1d

    const v0, 0xfdfb

    if-le p0, v0, :cond_2e

    :cond_1d
    const v0, 0xfe70

    if-lt p0, v0, :cond_1e

    const v0, 0xfe74

    if-le p0, v0, :cond_2e

    :cond_1e
    const v0, 0xfe76

    if-lt p0, v0, :cond_1f

    const v0, 0xfefc

    if-le p0, v0, :cond_2e

    :cond_1f
    const/16 v0, 0x200c

    if-eq p0, v0, :cond_2e

    const/16 v0, 0xe01

    if-lt p0, v0, :cond_20

    const/16 v0, 0xe3a

    if-le p0, v0, :cond_2e

    :cond_20
    const/16 v0, 0xe40

    if-lt p0, v0, :cond_21

    const/16 v0, 0xe4e

    if-le p0, v0, :cond_2e

    :cond_21
    const/16 v0, 0x1100

    if-lt p0, v0, :cond_22

    const/16 v0, 0x11ff

    if-le p0, v0, :cond_2e

    :cond_22
    const/16 v0, 0x3130

    if-lt p0, v0, :cond_23

    const/16 v0, 0x3185

    if-le p0, v0, :cond_2e

    :cond_23
    const v0, 0xa960

    if-lt p0, v0, :cond_24

    const v0, 0xa97f

    if-le p0, v0, :cond_2e

    :cond_24
    const v0, 0xac00

    if-lt p0, v0, :cond_25

    const v0, 0xd7af

    if-le p0, v0, :cond_2e

    :cond_25
    const v0, 0xd7b0

    if-lt p0, v0, :cond_26

    const v0, 0xd7ff

    if-le p0, v0, :cond_2e

    :cond_26
    const/16 v0, 0x3040

    if-lt p0, v0, :cond_27

    const/16 v0, 0x309f

    if-le p0, v0, :cond_2e

    :cond_27
    const/16 v0, 0x30a0

    if-lt p0, v0, :cond_28

    const/16 v0, 0x30ff

    if-le p0, v0, :cond_2e

    :cond_28
    const/16 v0, 0x4e00

    if-lt p0, v0, :cond_29

    const v0, 0x9fff

    if-le p0, v0, :cond_2e

    :cond_29
    const/16 v0, 0x3003

    if-eq p0, v0, :cond_2e

    const/16 v0, 0x3005

    if-eq p0, v0, :cond_2e

    const/16 v0, 0x303b

    if-eq p0, v0, :cond_2e

    const v0, 0xff21

    if-lt p0, v0, :cond_2a

    const v0, 0xff3a

    if-le p0, v0, :cond_2e

    :cond_2a
    const v0, 0xff41

    if-lt p0, v0, :cond_2b

    const v0, 0xff5a

    if-le p0, v0, :cond_2e

    :cond_2b
    const v0, 0xff66

    if-lt p0, v0, :cond_2c

    const v0, 0xff9f

    if-le p0, v0, :cond_2e

    :cond_2c
    const v0, 0xffa1

    if-lt p0, v0, :cond_2d

    const v0, 0xffdc

    if-gt p0, v0, :cond_2d

    goto :goto_0

    :cond_2d
    const/4 p0, 0x0

    goto :goto_1

    :cond_2e
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isHashtagNumberChar(C)Z
    .locals 1

    .line 105
    invoke-static {p0}, Lcom/linkedin/urls/detection/CharUtils;->isNumeric(C)Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0xff10

    if-lt p0, v0, :cond_0

    const v0, 0xff19

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x5f

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isHex(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_3

    const/16 v0, 0x46

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isLatinAccentsChars(C)Z
    .locals 1

    const/16 v0, 0xc0

    if-lt p0, v0, :cond_0

    const/16 v0, 0xd6

    if-le p0, v0, :cond_6

    :cond_0
    const/16 v0, 0xd8

    if-lt p0, v0, :cond_1

    const/16 v0, 0xf6

    if-le p0, v0, :cond_6

    :cond_1
    const/16 v0, 0xf8

    if-lt p0, v0, :cond_2

    const/16 v0, 0xff

    if-le p0, v0, :cond_6

    :cond_2
    const/16 v0, 0x100

    if-lt p0, v0, :cond_3

    const/16 v0, 0x24f

    if-le p0, v0, :cond_6

    :cond_3
    const/16 v0, 0x253

    if-eq p0, v0, :cond_6

    const/16 v0, 0x254

    if-eq p0, v0, :cond_6

    const/16 v0, 0x256

    if-eq p0, v0, :cond_6

    const/16 v0, 0x257

    if-eq p0, v0, :cond_6

    const/16 v0, 0x259

    if-eq p0, v0, :cond_6

    const/16 v0, 0x25b

    if-eq p0, v0, :cond_6

    const/16 v0, 0x263

    if-eq p0, v0, :cond_6

    const/16 v0, 0x268

    if-eq p0, v0, :cond_6

    const/16 v0, 0x26f

    if-eq p0, v0, :cond_6

    const/16 v0, 0x272

    if-eq p0, v0, :cond_6

    const/16 v0, 0x289

    if-eq p0, v0, :cond_6

    const/16 v0, 0x28b

    if-eq p0, v0, :cond_6

    const/16 v0, 0x2bb

    if-eq p0, v0, :cond_6

    const/16 v0, 0x300

    if-lt p0, v0, :cond_4

    const/16 v0, 0x36f

    if-le p0, v0, :cond_6

    :cond_4
    const/16 v0, 0x1e00

    if-lt p0, v0, :cond_5

    const/16 v0, 0x1eff

    if-gt p0, v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isNumeric(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValidDomainChar(C)Z
    .locals 1

    .line 75
    invoke-static {p0}, Lcom/linkedin/urls/detection/CharUtils;->isAlphaNumeric(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_1

    invoke-static {p0}, Lcom/linkedin/urls/detection/CharUtils;->isLatinAccentsChars(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isValidDomainStartChar(C)Z
    .locals 1

    .line 66
    invoke-static {p0}, Lcom/linkedin/urls/detection/CharUtils;->isAlphaNumeric(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x40

    if-eq p0, v0, :cond_1

    const v0, 0xff20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x24

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const v0, 0xff03

    if-eq p0, v0, :cond_1

    const/16 v0, 0x202a

    if-lt p0, v0, :cond_0

    const/16 v0, 0x202e

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isValidPathChar(C)Z
    .locals 1

    .line 82
    invoke-static {p0}, Lcom/linkedin/urls/detection/CharUtils;->isAlphaNumeric(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x21

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x27

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x24

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x25

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x26

    if-eq p0, v0, :cond_1

    const/16 v0, 0x40

    if-eq p0, v0, :cond_1

    .line 85
    invoke-static {p0}, Lcom/linkedin/urls/detection/CharUtils;->isLatinAccentsChars(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isValidPathEndChar(C)Z
    .locals 1

    .line 89
    invoke-static {p0}, Lcom/linkedin/urls/detection/CharUtils;->isAlphaNumeric(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    .line 90
    invoke-static {p0}, Lcom/linkedin/urls/detection/CharUtils;->isLatinAccentsChars(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isValidQueryChar(C)Z
    .locals 1

    .line 94
    invoke-static {p0}, Lcom/linkedin/urls/detection/CharUtils;->isAlphaNumeric(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x21

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x27

    if-eq p0, v0, :cond_1

    const/16 v0, 0x28

    if-eq p0, v0, :cond_1

    const/16 v0, 0x29

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x26

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x24

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x25

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x40

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isValidQueryEndChar(C)Z
    .locals 1

    .line 101
    invoke-static {p0}, Lcom/linkedin/urls/detection/CharUtils;->isAlphaNumeric(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x26

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2f

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isWhiteSpace(C)Z
    .locals 1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static splitByDot(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    const-string v0, ""

    aput-object v0, p0, v3

    return-object p0

    .line 168
    :cond_0
    new-instance v2, Lcom/linkedin/urls/detection/InputTextReader;

    invoke-direct {v2, p0}, Lcom/linkedin/urls/detection/InputTextReader;-><init>(Ljava/lang/String;)V

    .line 169
    :goto_0
    invoke-virtual {v2}, Lcom/linkedin/urls/detection/InputTextReader;->eof()Z

    move-result p0

    if-nez p0, :cond_3

    .line 170
    invoke-virtual {v2}, Lcom/linkedin/urls/detection/InputTextReader;->read()C

    move-result p0

    .line 171
    invoke-static {p0}, Lcom/linkedin/urls/detection/CharUtils;->isDot(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 172
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    :cond_1
    const/16 v4, 0x25

    if-ne p0, v4, :cond_2

    const/4 v4, 0x2

    .line 174
    invoke-virtual {v2, v4}, Lcom/linkedin/urls/detection/InputTextReader;->canReadChars(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2, v4}, Lcom/linkedin/urls/detection/InputTextReader;->peek(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "2e"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 175
    invoke-virtual {v2}, Lcom/linkedin/urls/detection/InputTextReader;->read()C

    .line 176
    invoke-virtual {v2}, Lcom/linkedin/urls/detection/InputTextReader;->read()C

    .line 177
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 183
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method
