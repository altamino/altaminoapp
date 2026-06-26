.class public Lcom/narvii/video/faceunity/authpack;
.super Ljava/lang/Object;
.source "authpack.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A()[B
    .locals 16

    const/16 v0, 0x46e

    new-array v0, v0, [B

    const/16 v1, 0x33

    :goto_0
    const/16 v2, 0x48

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 11
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, -0x18a33dcb

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v1, -0x8

    :goto_2
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    int-to-byte v2, v1

    aput-byte v2, v0, v3

    .line 12
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v4, 0x26c5e068

    if-ne v2, v4, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    const/16 v1, 0x7e

    :goto_4
    const/16 v2, 0x80

    if-ge v1, v2, :cond_5

    const/4 v4, 0x2

    int-to-byte v5, v1

    aput-byte v5, v0, v4

    .line 13
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v4

    const v5, -0x30904651

    if-ne v4, v5, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    const/4 v1, 0x5

    :goto_6
    const/16 v4, 0xe

    if-ge v1, v4, :cond_7

    const/4 v4, 0x3

    int-to-byte v5, v1

    aput-byte v5, v0, v4

    .line 14
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v4

    const v5, -0x38fc809d

    if-ne v4, v5, :cond_6

    goto :goto_7

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_7
    :goto_7
    const/16 v1, 0x3a

    :goto_8
    const/16 v4, 0x57

    if-ge v1, v4, :cond_9

    const/4 v4, 0x4

    int-to-byte v5, v1

    aput-byte v5, v0, v4

    .line 15
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v4

    const v5, -0x40cdf87b

    if-ne v4, v5, :cond_8

    goto :goto_9

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_9
    :goto_9
    const/16 v1, -0x7d

    :goto_a
    const/16 v4, -0x6d

    if-ge v1, v4, :cond_b

    const/4 v4, 0x5

    int-to-byte v5, v1

    aput-byte v5, v0, v4

    .line 16
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v4

    const v5, -0x687ab2e9

    if-ne v4, v5, :cond_a

    goto :goto_b

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_b
    :goto_b
    const/16 v1, -0x2a

    :goto_c
    const/16 v4, -0x16

    if-ge v1, v4, :cond_d

    const/4 v4, 0x6

    int-to-byte v5, v1

    aput-byte v5, v0, v4

    .line 17
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v4

    const v5, -0x70f6f424

    if-ne v4, v5, :cond_c

    goto :goto_d

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_d
    :goto_d
    const/16 v1, -0x3a

    :goto_e
    const/16 v4, -0x31

    const/4 v5, 0x7

    if-ge v1, v4, :cond_f

    int-to-byte v4, v1

    aput-byte v4, v0, v5

    .line 18
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v4

    const v6, -0x2008d593

    if-ne v4, v6, :cond_e

    goto :goto_f

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_f
    :goto_f
    const/16 v1, 0x2f

    :goto_10
    const/16 v4, 0x43

    if-ge v1, v4, :cond_11

    const/16 v4, 0x8

    int-to-byte v6, v1

    aput-byte v6, v0, v4

    .line 19
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v4

    const v6, 0x38281c3e

    if-ne v4, v6, :cond_10

    goto :goto_11

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_11
    :goto_11
    const/16 v1, 0x2b

    :goto_12
    const/16 v4, 0x30

    if-ge v1, v4, :cond_13

    const/16 v4, 0x9

    int-to-byte v6, v1

    aput-byte v6, v0, v4

    .line 20
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v4

    const v6, -0x22604f2b

    if-ne v4, v6, :cond_12

    goto :goto_13

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_13
    :goto_13
    const/16 v1, 0x67

    :goto_14
    const/16 v4, 0x7f

    if-ge v1, v4, :cond_15

    const/16 v4, 0xa

    int-to-byte v6, v1

    aput-byte v6, v0, v4

    .line 21
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v4

    const v6, -0x7978b9bb

    if-ne v4, v6, :cond_14

    goto :goto_15

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_15
    :goto_15
    const/16 v1, -0x77

    :goto_16
    const/16 v4, -0x74

    if-ge v1, v4, :cond_17

    const/16 v4, 0xb

    int-to-byte v6, v1

    aput-byte v6, v0, v4

    .line 22
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v4

    const v6, 0x669b83ed

    if-ne v4, v6, :cond_16

    goto :goto_17

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_17
    :goto_17
    const/16 v1, -0x66

    :goto_18
    const/16 v4, -0x59

    if-ge v1, v4, :cond_19

    const/16 v6, 0xc

    int-to-byte v7, v1

    aput-byte v7, v0, v6

    .line 23
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v6

    const v7, -0x468e8156

    if-ne v6, v7, :cond_18

    goto :goto_19

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_19
    :goto_19
    const/16 v1, -0x2f

    :goto_1a
    const/16 v6, -0x25

    if-ge v1, v6, :cond_1b

    const/16 v7, 0xd

    int-to-byte v8, v1

    aput-byte v8, v0, v7

    .line 24
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v7

    const v8, 0x2b250acd

    if-ne v7, v8, :cond_1a

    goto :goto_1b

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_1b
    :goto_1b
    const/16 v1, 0x59

    :goto_1c
    const/16 v7, 0x69

    if-ge v1, v7, :cond_1d

    const/16 v7, 0xe

    int-to-byte v8, v1

    aput-byte v8, v0, v7

    .line 25
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v7

    const v8, 0xbfdcafc

    if-ne v7, v8, :cond_1c

    goto :goto_1d

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_1d
    :goto_1d
    const/4 v1, -0x2

    :goto_1e
    const/16 v7, 0x11

    if-ge v1, v7, :cond_1f

    const/16 v7, 0xf

    int-to-byte v8, v1

    aput-byte v8, v0, v7

    .line 26
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v7

    const v8, 0x1ca93e6b

    if-ne v7, v8, :cond_1e

    goto :goto_1f

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_1f
    :goto_1f
    const/16 v1, 0x61

    :goto_20
    const/16 v7, 0x79

    if-ge v1, v7, :cond_21

    const/16 v7, 0x10

    int-to-byte v8, v1

    aput-byte v8, v0, v7

    .line 27
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v7

    const v8, 0x5ca56dc6

    if-ne v7, v8, :cond_20

    goto :goto_21

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_21
    :goto_21
    const/16 v1, -0x36

    :goto_22
    const/16 v7, -0x27

    if-ge v1, v7, :cond_23

    const/16 v7, 0x11

    int-to-byte v8, v1

    aput-byte v8, v0, v7

    .line 28
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v7

    const v8, -0x117aeab6

    if-ne v7, v8, :cond_22

    goto :goto_23

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_23
    :goto_23
    const/16 v1, -0xf

    :goto_24
    if-ge v1, v5, :cond_25

    const/16 v7, 0x12

    int-to-byte v8, v1

    aput-byte v8, v0, v7

    .line 29
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v7

    const v8, -0x5568d054

    if-ne v7, v8, :cond_24

    goto :goto_25

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_25
    :goto_25
    const/16 v1, -0x33

    :goto_26
    const/16 v7, -0x2c

    if-ge v1, v7, :cond_27

    const/16 v7, 0x13

    int-to-byte v8, v1

    aput-byte v8, v0, v7

    .line 30
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v7

    const v8, 0x175356f2

    if-ne v7, v8, :cond_26

    goto :goto_27

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_27
    :goto_27
    const/16 v7, -0x80

    :goto_28
    const/16 v8, -0x71

    if-ge v7, v8, :cond_29

    const/16 v8, 0x14

    int-to-byte v9, v7

    aput-byte v9, v0, v8

    .line 31
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v8

    const v9, 0x27676d01

    if-ne v8, v9, :cond_28

    goto :goto_29

    :cond_28
    add-int/lit8 v7, v7, 0x1

    goto :goto_28

    :cond_29
    :goto_29
    const/16 v7, -0xa

    :goto_2a
    if-gez v7, :cond_2b

    const/16 v8, 0x15

    int-to-byte v9, v7

    aput-byte v9, v0, v8

    .line 32
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v8

    const v9, -0x32c00e2b    # -2.0126856E8f

    if-ne v8, v9, :cond_2a

    goto :goto_2b

    :cond_2a
    add-int/lit8 v7, v7, 0x1

    goto :goto_2a

    :cond_2b
    :goto_2b
    const/16 v7, -0x51

    :goto_2c
    const/16 v8, -0x41

    const/16 v9, 0x16

    if-ge v7, v8, :cond_2d

    int-to-byte v8, v7

    aput-byte v8, v0, v9

    .line 33
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v8

    const v10, 0x63ea3f66

    if-ne v8, v10, :cond_2c

    goto :goto_2d

    :cond_2c
    add-int/lit8 v7, v7, 0x1

    goto :goto_2c

    :cond_2d
    :goto_2d
    const/4 v7, 0x0

    :goto_2e
    const/4 v8, 0x5

    if-ge v7, v8, :cond_2f

    const/16 v8, 0x17

    int-to-byte v10, v7

    aput-byte v10, v0, v8

    .line 34
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v8

    const v10, 0x3b84cc54

    if-ne v8, v10, :cond_2e

    goto :goto_2f

    :cond_2e
    add-int/lit8 v7, v7, 0x1

    goto :goto_2e

    :cond_2f
    :goto_2f
    const/16 v7, 0x1d

    :goto_30
    const/16 v8, 0x37

    if-ge v7, v8, :cond_31

    const/16 v10, 0x18

    int-to-byte v11, v7

    aput-byte v11, v0, v10

    .line 35
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v10

    const v11, -0x7a5c2a44

    if-ne v10, v11, :cond_30

    goto :goto_31

    :cond_30
    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    :cond_31
    :goto_31
    const/16 v7, -0x4e

    :goto_32
    const/16 v10, -0x3a

    if-ge v7, v10, :cond_33

    const/16 v10, 0x19

    int-to-byte v11, v7

    aput-byte v11, v0, v10

    .line 36
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v10

    const v11, -0x483bd10

    if-ne v10, v11, :cond_32

    goto :goto_33

    :cond_32
    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    :cond_33
    :goto_33
    const/16 v7, 0x44

    :goto_34
    const/16 v10, 0x53

    if-ge v7, v10, :cond_35

    const/16 v10, 0x1a

    int-to-byte v11, v7

    aput-byte v11, v0, v10

    .line 37
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v10

    const v11, -0x2bf7ce65

    if-ne v10, v11, :cond_34

    goto :goto_35

    :cond_34
    add-int/lit8 v7, v7, 0x1

    goto :goto_34

    :cond_35
    :goto_35
    const/16 v7, -0x74

    :goto_36
    const/16 v10, -0x69

    if-ge v7, v10, :cond_37

    const/16 v10, 0x1b

    int-to-byte v11, v7

    aput-byte v11, v0, v10

    .line 38
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v10

    const v11, 0x4c4c2699    # 5.35169E7f

    if-ne v10, v11, :cond_36

    goto :goto_37

    :cond_36
    add-int/lit8 v7, v7, 0x1

    goto :goto_36

    :cond_37
    :goto_37
    const/4 v7, 0x0

    :goto_38
    const/16 v10, 0x18

    if-ge v7, v10, :cond_39

    const/16 v10, 0x1c

    int-to-byte v11, v7

    aput-byte v11, v0, v10

    .line 39
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v10

    const v11, -0x6a97b108

    if-ne v10, v11, :cond_38

    goto :goto_39

    :cond_38
    add-int/lit8 v7, v7, 0x1

    goto :goto_38

    :cond_39
    :goto_39
    const/16 v7, 0x69

    :goto_3a
    if-ge v7, v2, :cond_3b

    const/16 v10, 0x1d

    int-to-byte v11, v7

    aput-byte v11, v0, v10

    .line 40
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v10

    const v11, -0x6a93c1f7

    if-ne v10, v11, :cond_3a

    goto :goto_3b

    :cond_3a
    add-int/lit8 v7, v7, 0x1

    goto :goto_3a

    :cond_3b
    :goto_3b
    const/16 v7, 0x67

    :goto_3c
    const/16 v10, 0x7f

    if-ge v7, v10, :cond_3d

    const/16 v10, 0x1e

    int-to-byte v11, v7

    aput-byte v11, v0, v10

    .line 41
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v10

    const v11, -0x4251b7

    if-ne v10, v11, :cond_3c

    goto :goto_3d

    :cond_3c
    add-int/lit8 v7, v7, 0x1

    goto :goto_3c

    :cond_3d
    :goto_3d
    const/16 v7, -0x6d

    :goto_3e
    const/16 v10, -0x5d

    if-ge v7, v10, :cond_3f

    const/16 v10, 0x1f

    int-to-byte v11, v7

    aput-byte v11, v0, v10

    .line 42
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v10

    const v11, -0xb5bbb47

    if-ne v10, v11, :cond_3e

    goto :goto_3f

    :cond_3e
    add-int/lit8 v7, v7, 0x1

    goto :goto_3e

    :cond_3f
    :goto_3f
    const/16 v7, -0x4e

    :goto_40
    const/16 v10, -0x36

    if-ge v7, v10, :cond_41

    const/16 v10, 0x20

    int-to-byte v11, v7

    aput-byte v11, v0, v10

    .line 43
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v10

    const v11, -0x4bfd5ad0

    if-ne v10, v11, :cond_40

    goto :goto_41

    :cond_40
    add-int/lit8 v7, v7, 0x1

    goto :goto_40

    :cond_41
    :goto_41
    const/16 v7, -0x5f

    :goto_42
    const/16 v10, -0x50

    if-ge v7, v10, :cond_43

    const/16 v10, 0x21

    int-to-byte v11, v7

    aput-byte v11, v0, v10

    .line 44
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v10

    const v11, -0xccf8ba0

    if-ne v10, v11, :cond_42

    goto :goto_43

    :cond_42
    add-int/lit8 v7, v7, 0x1

    goto :goto_42

    :cond_43
    :goto_43
    const/16 v7, 0x76

    :goto_44
    if-ge v7, v2, :cond_45

    const/16 v10, 0x22

    int-to-byte v11, v7

    aput-byte v11, v0, v10

    .line 45
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v10

    const v11, 0x50621a60

    if-ne v10, v11, :cond_44

    goto :goto_45

    :cond_44
    add-int/lit8 v7, v7, 0x1

    goto :goto_44

    :cond_45
    :goto_45
    const/16 v7, 0x11

    :goto_46
    const/16 v10, 0x20

    if-ge v7, v10, :cond_47

    const/16 v10, 0x23

    int-to-byte v11, v7

    aput-byte v11, v0, v10

    .line 46
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v10

    const v11, 0x53bbb5c

    if-ne v10, v11, :cond_46

    goto :goto_47

    :cond_46
    add-int/lit8 v7, v7, 0x1

    goto :goto_46

    :cond_47
    :goto_47
    const/16 v7, 0x49

    :goto_48
    const/16 v10, 0x54

    if-ge v7, v10, :cond_49

    const/16 v10, 0x24

    int-to-byte v11, v7

    aput-byte v11, v0, v10

    .line 47
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v10

    const v11, -0x243183fb

    if-ne v10, v11, :cond_48

    goto :goto_49

    :cond_48
    add-int/lit8 v7, v7, 0x1

    goto :goto_48

    :cond_49
    :goto_49
    const/16 v7, 0x19

    :goto_4a
    const/16 v10, 0x2a

    if-ge v7, v10, :cond_4b

    const/16 v10, 0x25

    int-to-byte v11, v7

    aput-byte v11, v0, v10

    .line 48
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v10

    const v11, 0x56b56a58

    if-ne v10, v11, :cond_4a

    goto :goto_4b

    :cond_4a
    add-int/lit8 v7, v7, 0x1

    goto :goto_4a

    :cond_4b
    :goto_4b
    const/16 v7, -0x32

    :goto_4c
    const/16 v10, -0x20

    if-ge v7, v10, :cond_4d

    const/16 v10, 0x26

    int-to-byte v11, v7

    aput-byte v11, v0, v10

    .line 49
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v10

    const v11, -0x5b378e62

    if-ne v10, v11, :cond_4c

    goto :goto_4d

    :cond_4c
    add-int/lit8 v7, v7, 0x1

    goto :goto_4c

    :cond_4d
    :goto_4d
    const/16 v7, -0x73

    :goto_4e
    const/16 v10, -0x5c

    if-ge v7, v10, :cond_4f

    const/16 v10, 0x27

    int-to-byte v11, v7

    aput-byte v11, v0, v10

    .line 50
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v10

    const v11, -0x1931707d

    if-ne v10, v11, :cond_4e

    goto :goto_4f

    :cond_4e
    add-int/lit8 v7, v7, 0x1

    goto :goto_4e

    :cond_4f
    :goto_4f
    const/16 v7, 0x5b

    :goto_50
    const/16 v10, 0x73

    if-ge v7, v10, :cond_51

    const/16 v10, 0x28

    int-to-byte v11, v7

    aput-byte v11, v0, v10

    .line 51
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v10

    const v11, -0x1ca8715

    if-ne v10, v11, :cond_50

    goto :goto_51

    :cond_50
    add-int/lit8 v7, v7, 0x1

    goto :goto_50

    :cond_51
    :goto_51
    const/16 v7, -0x3f

    :goto_52
    const/16 v10, -0x2e

    if-ge v7, v10, :cond_53

    const/16 v11, 0x29

    int-to-byte v12, v7

    aput-byte v12, v0, v11

    .line 52
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v12, 0x54831912

    if-ne v11, v12, :cond_52

    goto :goto_53

    :cond_52
    add-int/lit8 v7, v7, 0x1

    goto :goto_52

    :cond_53
    :goto_53
    const/16 v7, -0x15

    :goto_54
    const/4 v11, -0x4

    if-ge v7, v11, :cond_55

    const/16 v11, 0x2a

    int-to-byte v12, v7

    aput-byte v12, v0, v11

    .line 53
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v12, 0x1b6a6a78

    if-ne v11, v12, :cond_54

    goto :goto_55

    :cond_54
    add-int/lit8 v7, v7, 0x1

    goto :goto_54

    :cond_55
    :goto_55
    const/16 v7, -0x6c

    :goto_56
    const/16 v11, -0x5f

    if-ge v7, v11, :cond_57

    const/16 v11, 0x2b

    int-to-byte v12, v7

    aput-byte v12, v0, v11

    .line 54
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v12, 0x58fcc26d

    if-ne v11, v12, :cond_56

    goto :goto_57

    :cond_56
    add-int/lit8 v7, v7, 0x1

    goto :goto_56

    :cond_57
    :goto_57
    const/16 v7, -0x37

    :goto_58
    const/16 v11, -0x1a

    if-ge v7, v11, :cond_59

    const/16 v11, 0x2c

    int-to-byte v12, v7

    aput-byte v12, v0, v11

    .line 55
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v12, -0x31011c8b

    if-ne v11, v12, :cond_58

    goto :goto_59

    :cond_58
    add-int/lit8 v7, v7, 0x1

    goto :goto_58

    :cond_59
    :goto_59
    const/16 v7, -0x24

    :goto_5a
    const/16 v11, -0xc

    if-ge v7, v11, :cond_5b

    const/16 v11, 0x2d

    int-to-byte v12, v7

    aput-byte v12, v0, v11

    .line 56
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v12, 0x1eaf65f7

    if-ne v11, v12, :cond_5a

    goto :goto_5b

    :cond_5a
    add-int/lit8 v7, v7, 0x1

    goto :goto_5a

    :cond_5b
    :goto_5b
    const/16 v7, -0x67

    :goto_5c
    const/16 v11, -0x51

    if-ge v7, v11, :cond_5d

    const/16 v11, 0x2e

    int-to-byte v12, v7

    aput-byte v12, v0, v11

    .line 57
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v12, -0x34797033    # -1.7637274E7f

    if-ne v11, v12, :cond_5c

    goto :goto_5d

    :cond_5c
    add-int/lit8 v7, v7, 0x1

    goto :goto_5c

    :cond_5d
    :goto_5d
    const/16 v7, 0x74

    :goto_5e
    const/16 v11, 0x7e

    if-ge v7, v11, :cond_5f

    const/16 v11, 0x2f

    int-to-byte v12, v7

    aput-byte v12, v0, v11

    .line 58
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v12, -0x2253b6

    if-ne v11, v12, :cond_5e

    goto :goto_5f

    :cond_5e
    add-int/lit8 v7, v7, 0x1

    goto :goto_5e

    :cond_5f
    :goto_5f
    const/16 v7, -0x6e

    :goto_60
    const/16 v11, -0x5f

    if-ge v7, v11, :cond_61

    const/16 v11, 0x30

    int-to-byte v12, v7

    aput-byte v12, v0, v11

    .line 59
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v12, -0xece5690

    if-ne v11, v12, :cond_60

    goto :goto_61

    :cond_60
    add-int/lit8 v7, v7, 0x1

    goto :goto_60

    :cond_61
    :goto_61
    const/16 v7, -0x6a

    :goto_62
    const/16 v11, -0x57

    if-ge v7, v11, :cond_63

    const/16 v11, 0x31

    int-to-byte v12, v7

    aput-byte v12, v0, v11

    .line 60
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v12, -0x4d575200

    if-ne v11, v12, :cond_62

    goto :goto_63

    :cond_62
    add-int/lit8 v7, v7, 0x1

    goto :goto_62

    :cond_63
    :goto_63
    const/16 v7, -0x43

    :goto_64
    const/16 v11, -0x3a

    if-ge v7, v11, :cond_65

    const/16 v11, 0x32

    int-to-byte v12, v7

    aput-byte v12, v0, v11

    .line 61
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v12, 0x4ae5550e    # 7514759.0f

    if-ne v11, v12, :cond_64

    goto :goto_65

    :cond_64
    add-int/lit8 v7, v7, 0x1

    goto :goto_64

    :cond_65
    :goto_65
    const/16 v7, -0x6c

    :goto_66
    const/16 v11, -0x5a

    if-ge v7, v11, :cond_67

    const/16 v11, 0x33

    int-to-byte v12, v7

    aput-byte v12, v0, v11

    .line 62
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v12, -0x25bac9d3

    if-ne v11, v12, :cond_66

    goto :goto_67

    :cond_66
    add-int/lit8 v7, v7, 0x1

    goto :goto_66

    :cond_67
    :goto_67
    const/16 v7, 0xc

    :goto_68
    const/16 v11, 0x1c

    if-ge v7, v11, :cond_69

    const/16 v11, 0x34

    int-to-byte v12, v7

    aput-byte v12, v0, v11

    .line 63
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v12, -0x60064d8d

    if-ne v11, v12, :cond_68

    goto :goto_69

    :cond_68
    add-int/lit8 v7, v7, 0x1

    goto :goto_68

    :cond_69
    :goto_69
    const/4 v7, 0x3

    :goto_6a
    const/16 v11, 0x15

    if-ge v7, v11, :cond_6b

    const/16 v11, 0x35

    int-to-byte v12, v7

    aput-byte v12, v0, v11

    .line 64
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v12, 0x493a5c97

    if-ne v11, v12, :cond_6a

    goto :goto_6b

    :cond_6a
    add-int/lit8 v7, v7, 0x1

    goto :goto_6a

    :cond_6b
    :goto_6b
    const/16 v7, -0x3e

    :goto_6c
    const/16 v11, -0x33

    if-ge v7, v11, :cond_6d

    const/16 v11, 0x36

    int-to-byte v12, v7

    aput-byte v12, v0, v11

    .line 65
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v12, 0x98a5865

    if-ne v11, v12, :cond_6c

    goto :goto_6d

    :cond_6c
    add-int/lit8 v7, v7, 0x1

    goto :goto_6c

    :cond_6d
    :goto_6d
    const/16 v7, 0x6c

    const/16 v11, 0x6c

    :goto_6e
    const/16 v12, 0x7e

    if-ge v11, v12, :cond_6f

    int-to-byte v12, v11

    aput-byte v12, v0, v8

    .line 66
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x330ba626

    if-ne v12, v13, :cond_6e

    goto :goto_6f

    :cond_6e
    add-int/lit8 v11, v11, 0x1

    goto :goto_6e

    :cond_6f
    :goto_6f
    const/16 v11, -0x80

    :goto_70
    const/16 v12, -0x70

    if-ge v11, v12, :cond_71

    const/16 v12, 0x38

    int-to-byte v13, v11

    aput-byte v13, v0, v12

    .line 67
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x2bacbd07

    if-ne v12, v13, :cond_70

    goto :goto_71

    :cond_70
    add-int/lit8 v11, v11, 0x1

    goto :goto_70

    :cond_71
    :goto_71
    const/16 v11, 0x5c

    :goto_72
    const/16 v12, 0x6d

    if-ge v11, v12, :cond_73

    const/16 v13, 0x39

    int-to-byte v14, v11

    aput-byte v14, v0, v13

    .line 68
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v13

    const v14, -0x117862c5

    if-ne v13, v14, :cond_72

    goto :goto_73

    :cond_72
    add-int/lit8 v11, v11, 0x1

    goto :goto_72

    :cond_73
    :goto_73
    const/16 v11, 0x2b

    :goto_74
    const/16 v13, 0x41

    if-ge v11, v13, :cond_75

    const/16 v13, 0x3a

    int-to-byte v14, v11

    aput-byte v14, v0, v13

    .line 69
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v13

    const v14, 0x329fd1a1

    if-ne v13, v14, :cond_74

    goto :goto_75

    :cond_74
    add-int/lit8 v11, v11, 0x1

    goto :goto_74

    :cond_75
    :goto_75
    const/16 v11, 0x66

    :goto_76
    const/16 v13, 0x71

    if-ge v11, v13, :cond_77

    const/16 v13, 0x3b

    int-to-byte v14, v11

    aput-byte v14, v0, v13

    .line 70
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v13

    const v14, 0x20a52480

    if-ne v13, v14, :cond_76

    goto :goto_77

    :cond_76
    add-int/lit8 v11, v11, 0x1

    goto :goto_76

    :cond_77
    :goto_77
    const/16 v11, 0x24

    :goto_78
    const/16 v13, 0x40

    if-ge v11, v13, :cond_79

    const/16 v13, 0x3c

    int-to-byte v14, v11

    aput-byte v14, v0, v13

    .line 71
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v13

    const v14, 0x7beb340c

    if-ne v13, v14, :cond_78

    goto :goto_79

    :cond_78
    add-int/lit8 v11, v11, 0x1

    goto :goto_78

    :cond_79
    :goto_79
    const/16 v11, -0x73

    :goto_7a
    const/16 v13, -0x66

    if-ge v11, v13, :cond_7b

    const/16 v13, 0x3d

    int-to-byte v14, v11

    aput-byte v14, v0, v13

    .line 72
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v13

    const v14, 0xc438d34

    if-ne v13, v14, :cond_7a

    goto :goto_7b

    :cond_7a
    add-int/lit8 v11, v11, 0x1

    goto :goto_7a

    :cond_7b
    :goto_7b
    const/16 v11, -0x4f

    :goto_7c
    const/16 v13, -0x3d

    const/16 v14, 0x3e

    if-ge v11, v13, :cond_7d

    int-to-byte v13, v11

    aput-byte v13, v0, v14

    .line 73
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v13

    const v15, -0x1f1e0216

    if-ne v13, v15, :cond_7c

    goto :goto_7d

    :cond_7c
    add-int/lit8 v11, v11, 0x1

    goto :goto_7c

    :cond_7d
    :goto_7d
    const/16 v11, -0x47

    :goto_7e
    const/16 v13, -0x3c

    if-ge v11, v13, :cond_7f

    const/16 v13, 0x3f

    int-to-byte v15, v11

    aput-byte v15, v0, v13

    .line 74
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v13

    const v15, -0x1a99c147

    if-ne v13, v15, :cond_7e

    goto :goto_7f

    :cond_7e
    add-int/lit8 v11, v11, 0x1

    goto :goto_7e

    :cond_7f
    :goto_7f
    const/16 v11, -0x52

    :goto_80
    const/16 v13, -0x36

    if-ge v11, v13, :cond_81

    const/16 v13, 0x40

    int-to-byte v15, v11

    aput-byte v15, v0, v13

    .line 75
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v13

    const v15, -0x7e0b0c62

    if-ne v13, v15, :cond_80

    goto :goto_81

    :cond_80
    add-int/lit8 v11, v11, 0x1

    goto :goto_80

    :cond_81
    :goto_81
    const/16 v11, -0x14

    :goto_82
    const/16 v13, -0x9

    if-ge v11, v13, :cond_83

    const/16 v13, 0x41

    int-to-byte v15, v11

    aput-byte v15, v0, v13

    .line 76
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v13

    const v15, 0x28806d0d

    if-ne v13, v15, :cond_82

    goto :goto_83

    :cond_82
    add-int/lit8 v11, v11, 0x1

    goto :goto_82

    :cond_83
    :goto_83
    const/16 v11, -0xf

    :goto_84
    const/4 v13, -0x2

    if-ge v11, v13, :cond_85

    const/16 v13, 0x42

    int-to-byte v15, v11

    aput-byte v15, v0, v13

    .line 77
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v13

    const v15, 0x5ea612b

    if-ne v13, v15, :cond_84

    goto :goto_85

    :cond_84
    add-int/lit8 v11, v11, 0x1

    goto :goto_84

    :cond_85
    :goto_85
    const/16 v11, -0x76

    :goto_86
    const/16 v13, -0x5f

    if-ge v11, v13, :cond_87

    const/16 v13, 0x43

    int-to-byte v15, v11

    aput-byte v15, v0, v13

    .line 78
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v13

    const v15, -0x74789227

    if-ne v13, v15, :cond_86

    goto :goto_87

    :cond_86
    add-int/lit8 v11, v11, 0x1

    goto :goto_86

    :cond_87
    :goto_87
    const/16 v11, -0x59

    :goto_88
    const/16 v13, -0x3b

    if-ge v11, v13, :cond_89

    const/16 v13, 0x44

    int-to-byte v15, v11

    aput-byte v15, v0, v13

    .line 79
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v13

    const v15, -0xcdcc69a

    if-ne v13, v15, :cond_88

    goto :goto_89

    :cond_88
    add-int/lit8 v11, v11, 0x1

    goto :goto_88

    :cond_89
    :goto_89
    const/16 v11, 0x18

    :goto_8a
    const/16 v13, 0x29

    const/16 v15, 0x45

    if-ge v11, v13, :cond_8b

    int-to-byte v13, v11

    aput-byte v13, v0, v15

    .line 80
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v13

    const v1, 0xa1fc1eb

    if-ne v13, v1, :cond_8a

    goto :goto_8b

    :cond_8a
    add-int/lit8 v11, v11, 0x1

    goto :goto_8a

    :cond_8b
    :goto_8b
    const/16 v1, 0x72

    :goto_8c
    const/16 v11, 0x7e

    if-ge v1, v11, :cond_8d

    const/16 v11, 0x46

    int-to-byte v13, v1

    aput-byte v13, v0, v11

    .line 81
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, 0x4b69b3ef    # 1.5315951E7f

    if-ne v11, v13, :cond_8c

    goto :goto_8d

    :cond_8c
    add-int/lit8 v1, v1, 0x1

    goto :goto_8c

    :cond_8d
    :goto_8d
    const/16 v1, 0x5f

    :goto_8e
    const/16 v11, 0x70

    if-ge v1, v11, :cond_8f

    const/16 v11, 0x47

    int-to-byte v13, v1

    aput-byte v13, v0, v11

    .line 82
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, 0x3463995d

    if-ne v11, v13, :cond_8e

    goto :goto_8f

    :cond_8e
    add-int/lit8 v1, v1, 0x1

    goto :goto_8e

    :cond_8f
    :goto_8f
    const/16 v1, -0x55

    :goto_90
    const/16 v11, -0x4b

    if-ge v1, v11, :cond_91

    const/16 v11, 0x48

    int-to-byte v13, v1

    aput-byte v13, v0, v11

    .line 83
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, 0x4be8eeb7    # 3.0530926E7f

    if-ne v11, v13, :cond_90

    goto :goto_91

    :cond_90
    add-int/lit8 v1, v1, 0x1

    goto :goto_90

    :cond_91
    :goto_91
    const/16 v1, 0x46

    :goto_92
    const/16 v11, 0x53

    if-ge v1, v11, :cond_93

    const/16 v11, 0x49

    int-to-byte v13, v1

    aput-byte v13, v0, v11

    .line 84
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, 0x4aa17638    # 5290780.0f

    if-ne v11, v13, :cond_92

    goto :goto_93

    :cond_92
    add-int/lit8 v1, v1, 0x1

    goto :goto_92

    :cond_93
    :goto_93
    const/16 v1, 0x2a

    :goto_94
    const/16 v11, 0x34

    if-ge v1, v11, :cond_95

    const/16 v11, 0x4a

    int-to-byte v13, v1

    aput-byte v13, v0, v11

    .line 85
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, 0x6e6ead78

    if-ne v11, v13, :cond_94

    goto :goto_95

    :cond_94
    add-int/lit8 v1, v1, 0x1

    goto :goto_94

    :cond_95
    :goto_95
    const/16 v1, 0x4c

    :goto_96
    const/16 v11, 0x53

    if-ge v1, v11, :cond_97

    const/16 v11, 0x4b

    int-to-byte v13, v1

    aput-byte v13, v0, v11

    .line 86
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, -0x2c8d0afb

    if-ne v11, v13, :cond_96

    goto :goto_97

    :cond_96
    add-int/lit8 v1, v1, 0x1

    goto :goto_96

    :cond_97
    :goto_97
    const/16 v1, -0x2e

    :goto_98
    const/16 v11, -0x26

    if-ge v1, v11, :cond_99

    const/16 v11, 0x4c

    int-to-byte v13, v1

    aput-byte v13, v0, v11

    .line 87
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, -0xddd162d

    if-ne v11, v13, :cond_98

    goto :goto_99

    :cond_98
    add-int/lit8 v1, v1, 0x1

    goto :goto_98

    :cond_99
    :goto_99
    const/16 v1, 0x12

    :goto_9a
    const/16 v11, 0x1a

    if-ge v1, v11, :cond_9b

    const/16 v11, 0x4d

    int-to-byte v13, v1

    aput-byte v13, v0, v11

    .line 88
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, -0x4b194ce1

    if-ne v11, v13, :cond_9a

    goto :goto_9b

    :cond_9a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9a

    :cond_9b
    :goto_9b
    const/16 v1, 0x16

    :goto_9c
    const/16 v11, 0x27

    if-ge v1, v11, :cond_9d

    const/16 v11, 0x4e

    int-to-byte v13, v1

    aput-byte v13, v0, v11

    .line 89
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, -0x2694e0b5

    if-ne v11, v13, :cond_9c

    goto :goto_9d

    :cond_9c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9c

    :cond_9d
    :goto_9d
    const/16 v1, -0x5c

    :goto_9e
    const/16 v11, -0x4e

    if-ge v1, v11, :cond_9f

    const/16 v11, 0x4f

    int-to-byte v13, v1

    aput-byte v13, v0, v11

    .line 90
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, 0x5abdac19

    if-ne v11, v13, :cond_9e

    goto :goto_9f

    :cond_9e
    add-int/lit8 v1, v1, 0x1

    goto :goto_9e

    :cond_9f
    :goto_9f
    const/16 v1, 0x79

    :goto_a0
    const/16 v11, 0x7f

    if-ge v1, v11, :cond_a1

    const/16 v11, 0x50

    int-to-byte v13, v1

    aput-byte v13, v0, v11

    .line 91
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, -0x1dd7193a

    if-ne v11, v13, :cond_a0

    goto :goto_a1

    :cond_a0
    add-int/lit8 v1, v1, 0x1

    goto :goto_a0

    :cond_a1
    :goto_a1
    const/4 v1, -0x6

    :goto_a2
    const/4 v11, -0x2

    if-ge v1, v11, :cond_a3

    const/16 v11, 0x51

    int-to-byte v13, v1

    aput-byte v13, v0, v11

    .line 92
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, -0x45cde4fd

    if-ne v11, v13, :cond_a2

    goto :goto_a3

    :cond_a2
    add-int/lit8 v1, v1, 0x1

    goto :goto_a2

    :cond_a3
    :goto_a3
    const/16 v1, 0x43

    :goto_a4
    const/16 v11, 0x50

    if-ge v1, v11, :cond_a5

    const/16 v11, 0x52

    int-to-byte v13, v1

    aput-byte v13, v0, v11

    .line 93
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, 0x2fb1faf8

    if-ne v11, v13, :cond_a4

    goto :goto_a5

    :cond_a4
    add-int/lit8 v1, v1, 0x1

    goto :goto_a4

    :cond_a5
    :goto_a5
    const/16 v1, -0x4d

    :goto_a6
    const/16 v11, -0x3f

    if-ge v1, v11, :cond_a7

    const/16 v11, 0x53

    int-to-byte v13, v1

    aput-byte v13, v0, v11

    .line 94
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, 0x272a7a53

    if-ne v11, v13, :cond_a6

    goto :goto_a7

    :cond_a6
    add-int/lit8 v1, v1, 0x1

    goto :goto_a6

    :cond_a7
    :goto_a7
    const/16 v1, -0x80

    :goto_a8
    const/16 v11, -0x75

    if-ge v1, v11, :cond_a9

    const/16 v11, 0x54

    int-to-byte v13, v1

    aput-byte v13, v0, v11

    .line 95
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, 0x5d30fe33

    if-ne v11, v13, :cond_a8

    goto :goto_a9

    :cond_a8
    add-int/lit8 v1, v1, 0x1

    goto :goto_a8

    :cond_a9
    :goto_a9
    const/16 v1, -0x4c

    :goto_aa
    const/16 v11, -0x3b

    if-ge v1, v11, :cond_ab

    const/16 v11, 0x55

    int-to-byte v13, v1

    aput-byte v13, v0, v11

    .line 96
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, -0x7fbe8389

    if-ne v11, v13, :cond_aa

    goto :goto_ab

    :cond_aa
    add-int/lit8 v1, v1, 0x1

    goto :goto_aa

    :cond_ab
    :goto_ab
    const/16 v1, -0x56

    :goto_ac
    const/16 v11, -0x46

    if-ge v1, v11, :cond_ad

    const/16 v11, 0x56

    int-to-byte v13, v1

    aput-byte v13, v0, v11

    .line 97
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, -0x7f675ff5

    if-ne v11, v13, :cond_ac

    goto :goto_ad

    :cond_ac
    add-int/lit8 v1, v1, 0x1

    goto :goto_ac

    :cond_ad
    :goto_ad
    const/16 v1, -0x6f

    :goto_ae
    const/16 v11, -0x55

    if-ge v1, v11, :cond_af

    const/16 v11, 0x57

    int-to-byte v13, v1

    aput-byte v13, v0, v11

    .line 98
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, -0x143ff8ea

    if-ne v11, v13, :cond_ae

    goto :goto_af

    :cond_ae
    add-int/lit8 v1, v1, 0x1

    goto :goto_ae

    :cond_af
    :goto_af
    const/16 v1, 0x5d

    :goto_b0
    const/16 v11, 0x79

    if-ge v1, v11, :cond_b1

    const/16 v11, 0x58

    int-to-byte v13, v1

    aput-byte v13, v0, v11

    .line 99
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, 0x70ccab50

    if-ne v11, v13, :cond_b0

    goto :goto_b1

    :cond_b0
    add-int/lit8 v1, v1, 0x1

    goto :goto_b0

    :cond_b1
    :goto_b1
    const/16 v1, -0x4c

    :goto_b2
    const/16 v11, -0x38

    if-ge v1, v11, :cond_b3

    const/16 v11, 0x59

    int-to-byte v13, v1

    aput-byte v13, v0, v11

    .line 100
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, -0x56a18fa0

    if-ne v11, v13, :cond_b2

    goto :goto_b3

    :cond_b2
    add-int/lit8 v1, v1, 0x1

    goto :goto_b2

    :cond_b3
    :goto_b3
    const/16 v1, -0x31

    :goto_b4
    const/16 v11, -0x22

    if-ge v1, v11, :cond_b5

    const/16 v11, 0x5a

    int-to-byte v13, v1

    aput-byte v13, v0, v11

    .line 101
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, 0x4c0eef6a    # 3.7469608E7f

    if-ne v11, v13, :cond_b4

    goto :goto_b5

    :cond_b4
    add-int/lit8 v1, v1, 0x1

    goto :goto_b4

    :cond_b5
    :goto_b5
    const/4 v1, -0x6

    :goto_b6
    const/16 v11, 0xb

    if-ge v1, v11, :cond_b7

    const/16 v11, 0x5b

    int-to-byte v13, v1

    aput-byte v13, v0, v11

    .line 102
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, 0x50187eb9

    if-ne v11, v13, :cond_b6

    goto :goto_b7

    :cond_b6
    add-int/lit8 v1, v1, 0x1

    goto :goto_b6

    :cond_b7
    :goto_b7
    const/16 v1, -0x63

    :goto_b8
    const/16 v11, -0x5d

    if-ge v1, v11, :cond_b9

    const/16 v11, 0x5c

    int-to-byte v13, v1

    aput-byte v13, v0, v11

    .line 103
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, 0x60bfd5c1

    if-ne v11, v13, :cond_b8

    goto :goto_b9

    :cond_b8
    add-int/lit8 v1, v1, 0x1

    goto :goto_b8

    :cond_b9
    :goto_b9
    const/16 v1, -0xb

    :goto_ba
    const/4 v11, 0x4

    if-ge v1, v11, :cond_bb

    const/16 v11, 0x5d

    int-to-byte v13, v1

    aput-byte v13, v0, v11

    .line 104
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, -0x26d78f5c

    if-ne v11, v13, :cond_ba

    goto :goto_bb

    :cond_ba
    add-int/lit8 v1, v1, 0x1

    goto :goto_ba

    :cond_bb
    :goto_bb
    const/16 v1, 0x16

    :goto_bc
    const/16 v11, 0x31

    if-ge v1, v11, :cond_bd

    const/16 v11, 0x5e

    int-to-byte v13, v1

    aput-byte v13, v0, v11

    .line 105
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, 0x6acd17a2

    if-ne v11, v13, :cond_bc

    goto :goto_bd

    :cond_bc
    add-int/lit8 v1, v1, 0x1

    goto :goto_bc

    :cond_bd
    :goto_bd
    const/16 v1, 0x8

    :goto_be
    const/16 v11, 0x17

    if-ge v1, v11, :cond_bf

    const/16 v11, 0x5f

    int-to-byte v13, v1

    aput-byte v13, v0, v11

    .line 106
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, 0x5470fa7d

    if-ne v11, v13, :cond_be

    goto :goto_bf

    :cond_be
    add-int/lit8 v1, v1, 0x1

    goto :goto_be

    :cond_bf
    :goto_bf
    const/16 v1, -0x21

    :goto_c0
    const/16 v11, -0x14

    if-ge v1, v11, :cond_c1

    const/16 v11, 0x60

    int-to-byte v13, v1

    aput-byte v13, v0, v11

    .line 107
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, -0x17d72312

    if-ne v11, v13, :cond_c0

    goto :goto_c1

    :cond_c0
    add-int/lit8 v1, v1, 0x1

    goto :goto_c0

    :cond_c1
    :goto_c1
    const/4 v1, -0x6

    :goto_c2
    const/16 v11, 0x9

    if-ge v1, v11, :cond_c3

    const/16 v11, 0x61

    int-to-byte v13, v1

    aput-byte v13, v0, v11

    .line 108
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, -0x325e4b2d

    if-ne v11, v13, :cond_c2

    goto :goto_c3

    :cond_c2
    add-int/lit8 v1, v1, 0x1

    goto :goto_c2

    :cond_c3
    :goto_c3
    const/16 v1, -0x7b

    :goto_c4
    const/16 v11, -0x70

    if-ge v1, v11, :cond_c5

    const/16 v11, 0x62

    int-to-byte v13, v1

    aput-byte v13, v0, v11

    .line 109
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, -0x1cf1e050

    if-ne v11, v13, :cond_c4

    goto :goto_c5

    :cond_c4
    add-int/lit8 v1, v1, 0x1

    goto :goto_c4

    :cond_c5
    :goto_c5
    const/4 v1, -0x1

    :goto_c6
    const/16 v11, 0x12

    if-ge v1, v11, :cond_c7

    const/16 v11, 0x63

    int-to-byte v13, v1

    aput-byte v13, v0, v11

    .line 110
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, 0x10011e1

    if-ne v11, v13, :cond_c6

    goto :goto_c7

    :cond_c6
    add-int/lit8 v1, v1, 0x1

    goto :goto_c6

    :cond_c7
    :goto_c7
    const/16 v1, -0x46

    :goto_c8
    const/16 v11, -0x39

    if-ge v1, v11, :cond_c9

    const/16 v11, 0x64

    int-to-byte v13, v1

    aput-byte v13, v0, v11

    .line 111
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, -0x36b1307f

    if-ne v11, v13, :cond_c8

    goto :goto_c9

    :cond_c8
    add-int/lit8 v1, v1, 0x1

    goto :goto_c8

    :cond_c9
    :goto_c9
    const/16 v1, 0x3d

    :goto_ca
    if-ge v1, v15, :cond_cb

    const/16 v11, 0x65

    int-to-byte v13, v1

    aput-byte v13, v0, v11

    .line 112
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, 0x6f15a3e4

    if-ne v11, v13, :cond_ca

    goto :goto_cb

    :cond_ca
    add-int/lit8 v1, v1, 0x1

    goto :goto_ca

    :cond_cb
    :goto_cb
    const/16 v1, -0x2a

    :goto_cc
    const/16 v11, -0x22

    if-ge v1, v11, :cond_cd

    const/16 v11, 0x66

    int-to-byte v13, v1

    aput-byte v13, v0, v11

    .line 113
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, -0x75adeba0

    if-ne v11, v13, :cond_cc

    goto :goto_cd

    :cond_cc
    add-int/lit8 v1, v1, 0x1

    goto :goto_cc

    :cond_cd
    :goto_cd
    const/16 v1, 0x31

    :goto_ce
    const/16 v11, 0x44

    if-ge v1, v11, :cond_cf

    const/16 v11, 0x67

    int-to-byte v13, v1

    aput-byte v13, v0, v11

    .line 114
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, 0x52e88516

    if-ne v11, v13, :cond_ce

    goto :goto_cf

    :cond_ce
    add-int/lit8 v1, v1, 0x1

    goto :goto_ce

    :cond_cf
    :goto_cf
    const/16 v1, 0x7b

    :goto_d0
    if-ge v1, v2, :cond_d1

    const/16 v11, 0x68

    int-to-byte v13, v1

    aput-byte v13, v0, v11

    .line 115
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, 0x5494cae3

    if-ne v11, v13, :cond_d0

    goto :goto_d1

    :cond_d0
    add-int/lit8 v1, v1, 0x1

    goto :goto_d0

    :cond_d1
    :goto_d1
    const/16 v1, 0x19

    :goto_d2
    const/16 v11, 0x38

    if-ge v1, v11, :cond_d3

    const/16 v11, 0x69

    int-to-byte v13, v1

    aput-byte v13, v0, v11

    .line 116
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, 0x3c07505e

    if-ne v11, v13, :cond_d2

    goto :goto_d3

    :cond_d2
    add-int/lit8 v1, v1, 0x1

    goto :goto_d2

    :cond_d3
    :goto_d3
    const/16 v1, 0x37

    :goto_d4
    const/16 v11, 0x4c

    if-ge v1, v11, :cond_d5

    const/16 v11, 0x6a

    int-to-byte v13, v1

    aput-byte v13, v0, v11

    .line 117
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, 0x63111b1c

    if-ne v11, v13, :cond_d4

    goto :goto_d5

    :cond_d4
    add-int/lit8 v1, v1, 0x1

    goto :goto_d4

    :cond_d5
    :goto_d5
    const/16 v1, -0x7c

    :goto_d6
    const/16 v11, -0x72

    if-ge v1, v11, :cond_d7

    const/16 v11, 0x6b

    int-to-byte v13, v1

    aput-byte v13, v0, v11

    .line 118
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, -0x44c93ced

    if-ne v11, v13, :cond_d6

    goto :goto_d7

    :cond_d6
    add-int/lit8 v1, v1, 0x1

    goto :goto_d6

    :cond_d7
    :goto_d7
    const/16 v1, -0x52

    :goto_d8
    const/16 v11, -0x48

    if-ge v1, v11, :cond_d9

    int-to-byte v11, v1

    aput-byte v11, v0, v7

    .line 119
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, -0x4f0cec9f

    if-ne v11, v13, :cond_d8

    goto :goto_d9

    :cond_d8
    add-int/lit8 v1, v1, 0x1

    goto :goto_d8

    :cond_d9
    :goto_d9
    const/16 v1, 0x1c

    :goto_da
    if-ge v1, v8, :cond_db

    int-to-byte v11, v1

    aput-byte v11, v0, v12

    .line 120
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, 0x9d5620

    if-ne v11, v13, :cond_da

    goto :goto_db

    :cond_da
    add-int/lit8 v1, v1, 0x1

    goto :goto_da

    :cond_db
    :goto_db
    const/16 v1, -0x4f

    :goto_dc
    const/16 v11, -0x40

    if-ge v1, v11, :cond_dd

    const/16 v11, 0x6e

    int-to-byte v13, v1

    aput-byte v13, v0, v11

    .line 121
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, -0x468e328a

    if-ne v11, v13, :cond_dc

    goto :goto_dd

    :cond_dc
    add-int/lit8 v1, v1, 0x1

    goto :goto_dc

    :cond_dd
    :goto_dd
    const/16 v1, -0x27

    :goto_de
    const/16 v11, -0x18

    if-ge v1, v11, :cond_df

    const/16 v11, 0x6f

    int-to-byte v13, v1

    aput-byte v13, v0, v11

    .line 122
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, 0x43fe340b

    if-ne v11, v13, :cond_de

    goto :goto_df

    :cond_de
    add-int/lit8 v1, v1, 0x1

    goto :goto_de

    :cond_df
    :goto_df
    const/16 v1, -0x2e

    :goto_e0
    const/16 v11, -0x27

    if-ge v1, v11, :cond_e1

    const/16 v11, 0x70

    int-to-byte v13, v1

    aput-byte v13, v0, v11

    .line 123
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v11

    const v13, 0x60f54593

    if-ne v11, v13, :cond_e0

    goto :goto_e1

    :cond_e0
    add-int/lit8 v1, v1, 0x1

    goto :goto_e0

    :cond_e1
    :goto_e1
    const/16 v1, -0x56

    :goto_e2
    const/16 v11, -0x42

    if-ge v1, v11, :cond_e3

    const/16 v13, 0x71

    int-to-byte v12, v1

    aput-byte v12, v0, v13

    .line 124
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x411f38db

    if-ne v12, v13, :cond_e2

    goto :goto_e3

    :cond_e2
    add-int/lit8 v1, v1, 0x1

    const/16 v12, 0x6d

    goto :goto_e2

    :cond_e3
    :goto_e3
    const/16 v1, 0x45

    :goto_e4
    const/16 v12, 0x50

    if-ge v1, v12, :cond_e5

    const/16 v12, 0x72

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 125
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x19877691

    if-ne v12, v13, :cond_e4

    goto :goto_e5

    :cond_e4
    add-int/lit8 v1, v1, 0x1

    goto :goto_e4

    :cond_e5
    :goto_e5
    const/16 v1, 0x27

    :goto_e6
    const/16 v12, 0x3a

    if-ge v1, v12, :cond_e7

    const/16 v12, 0x73

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 126
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x211772bd

    if-ne v12, v13, :cond_e6

    goto :goto_e7

    :cond_e6
    add-int/lit8 v1, v1, 0x1

    goto :goto_e6

    :cond_e7
    :goto_e7
    const/16 v1, -0x80

    :goto_e8
    const/16 v12, -0x71

    if-ge v1, v12, :cond_e9

    const/16 v12, 0x74

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 127
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x6c373bc9

    if-ne v12, v13, :cond_e8

    goto :goto_e9

    :cond_e8
    add-int/lit8 v1, v1, 0x1

    goto :goto_e8

    :cond_e9
    :goto_e9
    const/16 v1, 0x5a

    :goto_ea
    if-ge v1, v7, :cond_eb

    const/16 v12, 0x75

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 128
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x497e011f

    if-ne v12, v13, :cond_ea

    goto :goto_eb

    :cond_ea
    add-int/lit8 v1, v1, 0x1

    goto :goto_ea

    :cond_eb
    :goto_eb
    const/16 v1, 0x4d

    :goto_ec
    const/16 v12, 0x61

    if-ge v1, v12, :cond_ed

    const/16 v12, 0x76

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 129
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x1b63636b

    if-ne v12, v13, :cond_ec

    goto :goto_ed

    :cond_ec
    add-int/lit8 v1, v1, 0x1

    goto :goto_ec

    :cond_ed
    :goto_ed
    const/16 v1, -0x15

    :goto_ee
    const/4 v12, 0x2

    if-ge v1, v12, :cond_ef

    const/16 v12, 0x77

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 130
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x305b8139

    if-ne v12, v13, :cond_ee

    goto :goto_ef

    :cond_ee
    add-int/lit8 v1, v1, 0x1

    goto :goto_ee

    :cond_ef
    :goto_ef
    const/16 v1, -0x37

    :goto_f0
    const/16 v12, -0x27

    if-ge v1, v12, :cond_f1

    const/16 v12, 0x78

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 131
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x6571679f

    if-ne v12, v13, :cond_f0

    goto :goto_f1

    :cond_f0
    add-int/lit8 v1, v1, 0x1

    goto :goto_f0

    :cond_f1
    :goto_f1
    const/16 v1, -0x10

    :goto_f2
    if-ge v1, v3, :cond_f3

    const/16 v12, 0x79

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 132
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x5f79c455

    if-ne v12, v13, :cond_f2

    goto :goto_f3

    :cond_f2
    add-int/lit8 v1, v1, 0x1

    goto :goto_f2

    :cond_f3
    :goto_f3
    const/16 v1, 0x32

    :goto_f4
    const/16 v12, 0x47

    if-ge v1, v12, :cond_f5

    const/16 v12, 0x7a

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 133
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x37b86006

    if-ne v12, v13, :cond_f4

    goto :goto_f5

    :cond_f4
    add-int/lit8 v1, v1, 0x1

    goto :goto_f4

    :cond_f5
    :goto_f5
    const/16 v1, 0x4d

    :goto_f6
    const/16 v12, 0x60

    if-ge v1, v12, :cond_f7

    const/16 v12, 0x7b

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 134
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x427955a6

    if-ne v12, v13, :cond_f6

    goto :goto_f7

    :cond_f6
    add-int/lit8 v1, v1, 0x1

    goto :goto_f6

    :cond_f7
    :goto_f7
    const/16 v1, -0x20

    :goto_f8
    const/4 v12, -0x7

    if-ge v1, v12, :cond_f9

    const/16 v12, 0x7c

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 135
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x1a76a674

    if-ne v12, v13, :cond_f8

    goto :goto_f9

    :cond_f8
    add-int/lit8 v1, v1, 0x1

    goto :goto_f8

    :cond_f9
    :goto_f9
    const/4 v1, -0x6

    :goto_fa
    const/16 v12, 0x15

    if-ge v1, v12, :cond_fb

    const/16 v12, 0x7d

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 136
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x523d8e58

    if-ne v12, v13, :cond_fa

    goto :goto_fb

    :cond_fa
    add-int/lit8 v1, v1, 0x1

    goto :goto_fa

    :cond_fb
    :goto_fb
    const/16 v1, 0x21

    :goto_fc
    const/16 v12, 0x2f

    if-ge v1, v12, :cond_fd

    const/16 v12, 0x7e

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 137
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0xcbb880b

    if-ne v12, v13, :cond_fc

    goto :goto_fd

    :cond_fc
    add-int/lit8 v1, v1, 0x1

    goto :goto_fc

    :cond_fd
    :goto_fd
    const/16 v1, 0x65

    :goto_fe
    const/16 v12, 0x7e

    if-ge v1, v12, :cond_ff

    const/16 v12, 0x7f

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 138
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x45d05c19

    if-ne v12, v13, :cond_fe

    goto :goto_ff

    :cond_fe
    add-int/lit8 v1, v1, 0x1

    goto :goto_fe

    :cond_ff
    :goto_ff
    const/16 v1, 0x7b

    :goto_100
    if-ge v1, v2, :cond_101

    int-to-byte v12, v1

    aput-byte v12, v0, v2

    .line 139
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x516747e4

    if-ne v12, v13, :cond_100

    goto :goto_101

    :cond_100
    add-int/lit8 v1, v1, 0x1

    goto :goto_100

    :cond_101
    :goto_101
    const/16 v1, -0x21

    :goto_102
    const/16 v12, -0x13

    if-ge v1, v12, :cond_103

    const/16 v12, 0x81

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 140
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x66484ce

    if-ne v12, v13, :cond_102

    goto :goto_103

    :cond_102
    add-int/lit8 v1, v1, 0x1

    goto :goto_102

    :cond_103
    :goto_103
    const/16 v1, -0x29

    :goto_104
    const/16 v12, -0x26

    if-ge v1, v12, :cond_105

    const/16 v12, 0x82

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 141
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2b0600b7

    if-ne v12, v13, :cond_104

    goto :goto_105

    :cond_104
    add-int/lit8 v1, v1, 0x1

    goto :goto_104

    :cond_105
    :goto_105
    const/16 v1, 0xf

    :goto_106
    const/16 v12, 0x22

    if-ge v1, v12, :cond_107

    const/16 v12, 0x83

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 142
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x18f13b3

    if-ne v12, v13, :cond_106

    goto :goto_107

    :cond_106
    add-int/lit8 v1, v1, 0x1

    goto :goto_106

    :cond_107
    :goto_107
    const/16 v1, -0xb

    :goto_108
    const/4 v12, -0x5

    if-ge v1, v12, :cond_109

    const/16 v12, 0x84

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 143
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2fe864f1

    if-ne v12, v13, :cond_108

    goto :goto_109

    :cond_108
    add-int/lit8 v1, v1, 0x1

    goto :goto_108

    :cond_109
    :goto_109
    const/16 v1, 0x18

    :goto_10a
    const/16 v12, 0x23

    if-ge v1, v12, :cond_10b

    const/16 v12, 0x85

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 144
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x7e88934d

    if-ne v12, v13, :cond_10a

    goto :goto_10b

    :cond_10a
    add-int/lit8 v1, v1, 0x1

    goto :goto_10a

    :cond_10b
    :goto_10b
    const/4 v1, 0x1

    :goto_10c
    const/16 v12, 0x12

    if-ge v1, v12, :cond_10d

    const/16 v12, 0x86

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 145
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3f653848

    if-ne v12, v13, :cond_10c

    goto :goto_10d

    :cond_10c
    add-int/lit8 v1, v1, 0x1

    goto :goto_10c

    :cond_10d
    :goto_10d
    const/16 v1, 0x73

    :goto_10e
    if-ge v1, v2, :cond_10f

    const/16 v12, 0x87

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 146
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x407702c7

    if-ne v12, v13, :cond_10e

    goto :goto_10f

    :cond_10e
    add-int/lit8 v1, v1, 0x1

    goto :goto_10e

    :cond_10f
    :goto_10f
    const/16 v1, 0x66

    :goto_110
    const/16 v12, 0x7a

    if-ge v1, v12, :cond_111

    const/16 v12, 0x88

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 147
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x5072208c

    if-ne v12, v13, :cond_110

    goto :goto_111

    :cond_110
    add-int/lit8 v1, v1, 0x1

    goto :goto_110

    :cond_111
    :goto_111
    const/16 v1, 0x38

    :goto_112
    const/16 v12, 0x41

    if-ge v1, v12, :cond_113

    const/16 v12, 0x89

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 148
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x4a6be7a1

    if-ne v12, v13, :cond_112

    goto :goto_113

    :cond_112
    add-int/lit8 v1, v1, 0x1

    goto :goto_112

    :cond_113
    :goto_113
    const/16 v1, -0x36

    :goto_114
    if-ge v1, v6, :cond_115

    const/16 v12, 0x8a

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 149
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x41c01287

    if-ne v12, v13, :cond_114

    goto :goto_115

    :cond_114
    add-int/lit8 v1, v1, 0x1

    goto :goto_114

    :cond_115
    :goto_115
    const/16 v1, -0x59

    :goto_116
    const/16 v12, -0x4b

    if-ge v1, v12, :cond_117

    const/16 v12, 0x8b

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 150
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x413cb981

    if-ne v12, v13, :cond_116

    goto :goto_117

    :cond_116
    add-int/lit8 v1, v1, 0x1

    goto :goto_116

    :cond_117
    :goto_117
    const/16 v1, -0xe

    :goto_118
    if-gez v1, :cond_119

    const/16 v12, 0x8c

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 151
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x23ba6707

    if-ne v12, v13, :cond_118

    goto :goto_119

    :cond_118
    add-int/lit8 v1, v1, 0x1

    goto :goto_118

    :cond_119
    :goto_119
    const/16 v1, 0x45

    :goto_11a
    const/16 v12, 0x5d

    if-ge v1, v12, :cond_11b

    const/16 v12, 0x8d

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 152
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x1139da56

    if-ne v12, v13, :cond_11a

    goto :goto_11b

    :cond_11a
    add-int/lit8 v1, v1, 0x1

    goto :goto_11a

    :cond_11b
    :goto_11b
    const/16 v1, 0x3c

    :goto_11c
    if-ge v1, v14, :cond_11d

    const/16 v12, 0x8e

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 153
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x4f905d58    # 4.844073E9f

    if-ne v12, v13, :cond_11c

    goto :goto_11d

    :cond_11c
    add-int/lit8 v1, v1, 0x1

    goto :goto_11c

    :cond_11d
    :goto_11d
    const/4 v1, 0x0

    :goto_11e
    if-ge v1, v9, :cond_11f

    const/16 v12, 0x8f

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 154
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3997825e

    if-ne v12, v13, :cond_11e

    goto :goto_11f

    :cond_11e
    add-int/lit8 v1, v1, 0x1

    goto :goto_11e

    :cond_11f
    :goto_11f
    const/16 v1, -0x7e

    :goto_120
    const/16 v12, -0x71

    if-ge v1, v12, :cond_121

    const/16 v12, 0x90

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 155
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x52ec8af8

    if-ne v12, v13, :cond_120

    goto :goto_121

    :cond_120
    add-int/lit8 v1, v1, 0x1

    goto :goto_120

    :cond_121
    :goto_121
    const/16 v1, 0x4e

    :goto_122
    const/16 v12, 0x58

    if-ge v1, v12, :cond_123

    const/16 v12, 0x91

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 156
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x6588943c

    if-ne v12, v13, :cond_122

    goto :goto_123

    :cond_122
    add-int/lit8 v1, v1, 0x1

    goto :goto_122

    :cond_123
    :goto_123
    const/16 v1, -0x31

    :goto_124
    if-ge v1, v6, :cond_125

    const/16 v12, 0x92

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 157
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x12283b64

    if-ne v12, v13, :cond_124

    goto :goto_125

    :cond_124
    add-int/lit8 v1, v1, 0x1

    goto :goto_124

    :cond_125
    :goto_125
    const/16 v1, -0xd

    :goto_126
    if-ge v1, v3, :cond_127

    const/16 v12, 0x93

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 158
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x12283b64

    if-ne v12, v13, :cond_126

    goto :goto_127

    :cond_126
    add-int/lit8 v1, v1, 0x1

    goto :goto_126

    :cond_127
    :goto_127
    const/16 v1, -0x6d

    :goto_128
    const/16 v12, -0x64

    if-ge v1, v12, :cond_129

    const/16 v12, 0x94

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 159
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x50e73ea2

    if-ne v12, v13, :cond_128

    goto :goto_129

    :cond_128
    add-int/lit8 v1, v1, 0x1

    goto :goto_128

    :cond_129
    :goto_129
    const/16 v1, -0x71

    :goto_12a
    const/16 v12, -0x5d

    if-ge v1, v12, :cond_12b

    const/16 v12, 0x95

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 160
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x4910b64e    # 592740.9f

    if-ne v12, v13, :cond_12a

    goto :goto_12b

    :cond_12a
    add-int/lit8 v1, v1, 0x1

    goto :goto_12a

    :cond_12b
    :goto_12b
    const/16 v1, 0x18

    :goto_12c
    const/16 v12, 0x22

    if-ge v1, v12, :cond_12d

    const/16 v12, 0x96

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 161
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x4d18a9eb

    if-ne v12, v13, :cond_12c

    goto :goto_12d

    :cond_12c
    add-int/lit8 v1, v1, 0x1

    goto :goto_12c

    :cond_12d
    :goto_12d
    const/16 v1, -0x80

    :goto_12e
    const/16 v12, -0x72

    if-ge v1, v12, :cond_12f

    const/16 v12, 0x97

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 162
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x18d9e385

    if-ne v12, v13, :cond_12e

    goto :goto_12f

    :cond_12e
    add-int/lit8 v1, v1, 0x1

    goto :goto_12e

    :cond_12f
    :goto_12f
    const/16 v1, 0x5a

    :goto_130
    const/16 v12, 0x63

    if-ge v1, v12, :cond_131

    const/16 v12, 0x98

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 163
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3c0b4ee4

    if-ne v12, v13, :cond_130

    goto :goto_131

    :cond_130
    add-int/lit8 v1, v1, 0x1

    goto :goto_130

    :cond_131
    :goto_131
    const/16 v1, -0x33

    :goto_132
    const/16 v12, -0x21

    if-ge v1, v12, :cond_133

    const/16 v12, 0x99

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 164
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x571393e5

    if-ne v12, v13, :cond_132

    goto :goto_133

    :cond_132
    add-int/lit8 v1, v1, 0x1

    goto :goto_132

    :cond_133
    :goto_133
    const/16 v1, -0x34

    :goto_134
    const/16 v12, -0x1d

    if-ge v1, v12, :cond_135

    const/16 v12, 0x9a

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 165
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0xac145ec

    if-ne v12, v13, :cond_134

    goto :goto_135

    :cond_134
    add-int/lit8 v1, v1, 0x1

    goto :goto_134

    :cond_135
    :goto_135
    const/16 v1, 0x21

    :goto_136
    if-ge v1, v14, :cond_137

    const/16 v12, 0x9b

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 166
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x15f929cd

    if-ne v12, v13, :cond_136

    goto :goto_137

    :cond_136
    add-int/lit8 v1, v1, 0x1

    goto :goto_136

    :cond_137
    :goto_137
    const/16 v1, -0x3e

    :goto_138
    const/16 v12, -0x2a

    if-ge v1, v12, :cond_139

    const/16 v12, 0x9c

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 167
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3829d57d

    if-ne v12, v13, :cond_138

    goto :goto_139

    :cond_138
    add-int/lit8 v1, v1, 0x1

    goto :goto_138

    :cond_139
    :goto_139
    const/16 v1, 0x62

    :goto_13a
    const/16 v12, 0x7a

    if-ge v1, v12, :cond_13b

    const/16 v12, 0x9d

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 168
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x573afc8d

    if-ne v12, v13, :cond_13a

    goto :goto_13b

    :cond_13a
    add-int/lit8 v1, v1, 0x1

    goto :goto_13a

    :cond_13b
    :goto_13b
    const/16 v1, 0x17

    :goto_13c
    const/16 v12, 0x28

    if-ge v1, v12, :cond_13d

    const/16 v12, 0x9e

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 169
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3439f220

    if-ne v12, v13, :cond_13c

    goto :goto_13d

    :cond_13c
    add-int/lit8 v1, v1, 0x1

    goto :goto_13c

    :cond_13d
    :goto_13d
    const/16 v1, -0x1d

    :goto_13e
    const/16 v12, -0xc

    if-ge v1, v12, :cond_13f

    const/16 v12, 0x9f

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 170
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x1cad5fb3

    if-ne v12, v13, :cond_13e

    goto :goto_13f

    :cond_13e
    add-int/lit8 v1, v1, 0x1

    goto :goto_13e

    :cond_13f
    :goto_13f
    const/16 v1, 0x12

    :goto_140
    const/16 v12, 0x24

    if-ge v1, v12, :cond_141

    const/16 v12, 0xa0

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 171
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x20c5b5ec

    if-ne v12, v13, :cond_140

    goto :goto_141

    :cond_140
    add-int/lit8 v1, v1, 0x1

    goto :goto_140

    :cond_141
    :goto_141
    const/16 v1, -0x1a

    :goto_142
    const/16 v12, -0xa

    if-ge v1, v12, :cond_143

    const/16 v12, 0xa1

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 172
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x4cbe825f

    if-ne v12, v13, :cond_142

    goto :goto_143

    :cond_142
    add-int/lit8 v1, v1, 0x1

    goto :goto_142

    :cond_143
    :goto_143
    const/4 v1, 0x0

    :goto_144
    const/16 v12, 0xf

    if-ge v1, v12, :cond_145

    const/16 v12, 0xa2

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 173
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x4cbe825f

    if-ne v12, v13, :cond_144

    goto :goto_145

    :cond_144
    add-int/lit8 v1, v1, 0x1

    goto :goto_144

    :cond_145
    :goto_145
    const/4 v1, 0x7

    :goto_146
    const/16 v12, 0x22

    if-ge v1, v12, :cond_147

    const/16 v12, 0xa3

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 174
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x44541965

    if-ne v12, v13, :cond_146

    goto :goto_147

    :cond_146
    add-int/lit8 v1, v1, 0x1

    goto :goto_146

    :cond_147
    :goto_147
    const/16 v1, -0x31

    :goto_148
    const/16 v12, -0x1f

    if-ge v1, v12, :cond_149

    const/16 v12, 0xa4

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 175
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x3ce61a77

    if-ne v12, v13, :cond_148

    goto :goto_149

    :cond_148
    add-int/lit8 v1, v1, 0x1

    goto :goto_148

    :cond_149
    :goto_149
    const/16 v1, -0x50

    :goto_14a
    const/16 v12, -0x41

    if-ge v1, v12, :cond_14b

    const/16 v12, 0xa5

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 176
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x398dd0da

    if-ne v12, v13, :cond_14a

    goto :goto_14b

    :cond_14a
    add-int/lit8 v1, v1, 0x1

    goto :goto_14a

    :cond_14b
    :goto_14b
    const/16 v1, -0x80

    :goto_14c
    const/16 v12, -0x70

    if-ge v1, v12, :cond_14d

    const/16 v12, 0xa6

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 177
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x1f9aab03

    if-ne v12, v13, :cond_14c

    goto :goto_14d

    :cond_14c
    add-int/lit8 v1, v1, 0x1

    goto :goto_14c

    :cond_14d
    :goto_14d
    const/16 v1, 0x1b

    :goto_14e
    const/16 v12, 0x20

    if-ge v1, v12, :cond_14f

    const/16 v12, 0xa7

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 178
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0xc1b7d12

    if-ne v12, v13, :cond_14e

    goto :goto_14f

    :cond_14e
    add-int/lit8 v1, v1, 0x1

    goto :goto_14e

    :cond_14f
    :goto_14f
    const/16 v1, 0x35

    :goto_150
    const/16 v12, 0x4c

    if-ge v1, v12, :cond_151

    const/16 v12, 0xa8

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 179
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x62b335ac

    if-ne v12, v13, :cond_150

    goto :goto_151

    :cond_150
    add-int/lit8 v1, v1, 0x1

    goto :goto_150

    :cond_151
    :goto_151
    const/16 v1, 0x1a

    :goto_152
    const/16 v12, 0x33

    if-ge v1, v12, :cond_153

    const/16 v12, 0xa9

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 180
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x50c32577

    if-ne v12, v13, :cond_152

    goto :goto_153

    :cond_152
    add-int/lit8 v1, v1, 0x1

    goto :goto_152

    :cond_153
    :goto_153
    const/16 v1, -0x1d

    :goto_154
    const/4 v12, -0x5

    if-ge v1, v12, :cond_155

    const/16 v12, 0xaa

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 181
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0xbaf3ef3

    if-ne v12, v13, :cond_154

    goto :goto_155

    :cond_154
    add-int/lit8 v1, v1, 0x1

    goto :goto_154

    :cond_155
    :goto_155
    const/16 v1, -0x4c

    :goto_156
    const/16 v12, -0x3a

    if-ge v1, v12, :cond_157

    const/16 v12, 0xab

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 182
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x200c64e2

    if-ne v12, v13, :cond_156

    goto :goto_157

    :cond_156
    add-int/lit8 v1, v1, 0x1

    goto :goto_156

    :cond_157
    :goto_157
    const/16 v1, 0x79

    :goto_158
    if-ge v1, v2, :cond_159

    const/16 v12, 0xac

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 183
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x3656249e

    if-ne v12, v13, :cond_158

    goto :goto_159

    :cond_158
    add-int/lit8 v1, v1, 0x1

    goto :goto_158

    :cond_159
    :goto_159
    const/16 v1, 0x61

    :goto_15a
    const/16 v12, 0x75

    if-ge v1, v12, :cond_15b

    const/16 v12, 0xad

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 184
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x15095ed6

    if-ne v12, v13, :cond_15a

    goto :goto_15b

    :cond_15a
    add-int/lit8 v1, v1, 0x1

    goto :goto_15a

    :cond_15b
    :goto_15b
    const/16 v1, 0x3b

    :goto_15c
    const/16 v12, 0x53

    if-ge v1, v12, :cond_15d

    const/16 v12, 0xae

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 185
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x412424c4

    if-ne v12, v13, :cond_15c

    goto :goto_15d

    :cond_15c
    add-int/lit8 v1, v1, 0x1

    goto :goto_15c

    :cond_15d
    :goto_15d
    const/16 v1, -0x3f

    :goto_15e
    const/16 v12, -0x24

    if-ge v1, v12, :cond_15f

    const/16 v12, 0xaf

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 186
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3e6e16c8

    if-ne v12, v13, :cond_15e

    goto :goto_15f

    :cond_15e
    add-int/lit8 v1, v1, 0x1

    goto :goto_15e

    :cond_15f
    :goto_15f
    const/16 v1, -0x53

    :goto_160
    if-ge v1, v11, :cond_161

    const/16 v12, 0xb0

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 187
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x6b7ff404

    if-ne v12, v13, :cond_160

    goto :goto_161

    :cond_160
    add-int/lit8 v1, v1, 0x1

    goto :goto_160

    :cond_161
    :goto_161
    const/16 v1, -0x80

    :goto_162
    const/16 v12, -0x69

    if-ge v1, v12, :cond_163

    const/16 v12, 0xb1

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 188
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3f2cae47

    if-ne v12, v13, :cond_162

    goto :goto_163

    :cond_162
    add-int/lit8 v1, v1, 0x1

    goto :goto_162

    :cond_163
    :goto_163
    const/16 v1, -0x5d

    :goto_164
    if-ge v1, v4, :cond_165

    const/16 v12, 0xb2

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 189
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0xa9fb2a

    if-ne v12, v13, :cond_164

    goto :goto_165

    :cond_164
    add-int/lit8 v1, v1, 0x1

    goto :goto_164

    :cond_165
    :goto_165
    const/16 v1, 0x6d

    :goto_166
    if-ge v1, v2, :cond_167

    const/16 v12, 0xb3

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 190
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x6fc4d3ff

    if-ne v12, v13, :cond_166

    goto :goto_167

    :cond_166
    add-int/lit8 v1, v1, 0x1

    goto :goto_166

    :cond_167
    :goto_167
    const/16 v1, -0x27

    :goto_168
    const/16 v12, -0x19

    if-ge v1, v12, :cond_169

    const/16 v12, 0xb4

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 191
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x1d6c73d4

    if-ne v12, v13, :cond_168

    goto :goto_169

    :cond_168
    add-int/lit8 v1, v1, 0x1

    goto :goto_168

    :cond_169
    :goto_169
    const/16 v1, -0x4d

    :goto_16a
    const/16 v12, -0x3f

    if-ge v1, v12, :cond_16b

    const/16 v12, 0xb5

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 192
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3f8230b0

    if-ne v12, v13, :cond_16a

    goto :goto_16b

    :cond_16a
    add-int/lit8 v1, v1, 0x1

    goto :goto_16a

    :cond_16b
    :goto_16b
    const/16 v1, -0x3e

    :goto_16c
    if-ge v1, v10, :cond_16d

    const/16 v12, 0xb6

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 193
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x56580915

    if-ne v12, v13, :cond_16c

    goto :goto_16d

    :cond_16c
    add-int/lit8 v1, v1, 0x1

    goto :goto_16c

    :cond_16d
    :goto_16d
    const/16 v1, -0xa

    :goto_16e
    if-ge v1, v5, :cond_16f

    const/16 v12, 0xb7

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 194
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x1e85e529

    if-ne v12, v13, :cond_16e

    goto :goto_16f

    :cond_16e
    add-int/lit8 v1, v1, 0x1

    goto :goto_16e

    :cond_16f
    :goto_16f
    const/16 v1, 0x38

    :goto_170
    const/16 v12, 0x52

    if-ge v1, v12, :cond_171

    const/16 v12, 0xb8

    int-to-byte v13, v1

    aput-byte v13, v0, v12

    .line 195
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x5b9b59d

    if-ne v12, v13, :cond_170

    goto :goto_171

    :cond_170
    add-int/lit8 v1, v1, 0x1

    goto :goto_170

    :cond_171
    :goto_171
    const/16 v1, -0x5e

    const/16 v12, -0x5e

    :goto_172
    const/16 v13, -0x49

    if-ge v12, v13, :cond_173

    const/16 v13, 0xb9

    int-to-byte v7, v12

    aput-byte v7, v0, v13

    .line 196
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v7

    const v13, -0x33539a90    # -9.038528E7f

    if-ne v7, v13, :cond_172

    goto :goto_173

    :cond_172
    add-int/lit8 v12, v12, 0x1

    const/16 v7, 0x6c

    goto :goto_172

    :cond_173
    :goto_173
    const/4 v7, 0x1

    :goto_174
    const/16 v12, 0xf

    if-ge v7, v12, :cond_175

    const/16 v12, 0xba

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 197
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3f4cf25d

    if-ne v12, v13, :cond_174

    goto :goto_175

    :cond_174
    add-int/lit8 v7, v7, 0x1

    goto :goto_174

    :cond_175
    :goto_175
    const/16 v7, -0x9

    :goto_176
    const/4 v12, -0x6

    if-ge v7, v12, :cond_177

    const/16 v12, 0xbb

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 198
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x40d1c1f9

    if-ne v12, v13, :cond_176

    goto :goto_177

    :cond_176
    add-int/lit8 v7, v7, 0x1

    goto :goto_176

    :cond_177
    :goto_177
    const/16 v7, 0x6e

    :goto_178
    if-ge v7, v2, :cond_179

    const/16 v12, 0xbc

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 199
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x45c3fd73

    if-ne v12, v13, :cond_178

    goto :goto_179

    :cond_178
    add-int/lit8 v7, v7, 0x1

    goto :goto_178

    :cond_179
    :goto_179
    const/16 v7, -0x5e

    :goto_17a
    const/16 v12, -0x46

    if-ge v7, v12, :cond_17b

    const/16 v12, 0xbd

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 200
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x548193a

    if-ne v12, v13, :cond_17a

    goto :goto_17b

    :cond_17a
    add-int/lit8 v7, v7, 0x1

    goto :goto_17a

    :cond_17b
    :goto_17b
    const/16 v7, -0x4a

    :goto_17c
    const/16 v12, -0x43

    if-ge v7, v12, :cond_17d

    const/16 v12, 0xbe

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 201
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x2b888422

    if-ne v12, v13, :cond_17c

    goto :goto_17d

    :cond_17c
    add-int/lit8 v7, v7, 0x1

    goto :goto_17c

    :cond_17d
    :goto_17d
    const/16 v7, 0x37

    :goto_17e
    const/16 v12, 0x39

    if-ge v7, v12, :cond_17f

    const/16 v12, 0xbf

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 202
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x650ea8fc

    if-ne v12, v13, :cond_17e

    goto :goto_17f

    :cond_17e
    add-int/lit8 v7, v7, 0x1

    goto :goto_17e

    :cond_17f
    :goto_17f
    const/16 v7, 0x70

    :goto_180
    if-ge v7, v2, :cond_181

    const/16 v12, 0xc0

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 203
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x57db5b4

    if-ne v12, v13, :cond_180

    goto :goto_181

    :cond_180
    add-int/lit8 v7, v7, 0x1

    goto :goto_180

    :cond_181
    :goto_181
    const/16 v7, 0x75

    :goto_182
    const/16 v12, 0x7d

    if-ge v7, v12, :cond_183

    const/16 v12, 0xc1

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 204
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x34191738

    if-ne v12, v13, :cond_182

    goto :goto_183

    :cond_182
    add-int/lit8 v7, v7, 0x1

    goto :goto_182

    :cond_183
    :goto_183
    const/16 v7, -0x23

    :goto_184
    const/16 v12, -0xc

    if-ge v7, v12, :cond_185

    const/16 v12, 0xc2

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 205
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3a9892e0

    if-ne v12, v13, :cond_184

    goto :goto_185

    :cond_184
    add-int/lit8 v7, v7, 0x1

    goto :goto_184

    :cond_185
    :goto_185
    const/16 v7, -0x42

    :goto_186
    const/16 v12, -0x2c

    if-ge v7, v12, :cond_187

    const/16 v12, 0xc3

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 206
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x79740934

    if-ne v12, v13, :cond_186

    goto :goto_187

    :cond_186
    add-int/lit8 v7, v7, 0x1

    goto :goto_186

    :cond_187
    :goto_187
    const/16 v7, -0x2d

    :goto_188
    const/16 v12, -0x24

    if-ge v7, v12, :cond_189

    const/16 v12, 0xc4

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 207
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x1b4c9f6f

    if-ne v12, v13, :cond_188

    goto :goto_189

    :cond_188
    add-int/lit8 v7, v7, 0x1

    goto :goto_188

    :cond_189
    :goto_189
    const/16 v7, 0x3b

    :goto_18a
    const/16 v12, 0x57

    if-ge v7, v12, :cond_18b

    const/16 v12, 0xc5

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 208
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x55b41daf

    if-ne v12, v13, :cond_18a

    goto :goto_18b

    :cond_18a
    add-int/lit8 v7, v7, 0x1

    goto :goto_18a

    :cond_18b
    :goto_18b
    const/16 v7, -0x76

    :goto_18c
    const/16 v12, -0x69

    if-ge v7, v12, :cond_18d

    const/16 v12, 0xc6

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 209
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x316fe90e

    if-ne v12, v13, :cond_18c

    goto :goto_18d

    :cond_18c
    add-int/lit8 v7, v7, 0x1

    goto :goto_18c

    :cond_18d
    :goto_18d
    const/16 v7, 0x50

    :goto_18e
    const/16 v12, 0x59

    if-ge v7, v12, :cond_18f

    const/16 v12, 0xc7

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 210
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x57a830f

    if-ne v12, v13, :cond_18e

    goto :goto_18f

    :cond_18e
    add-int/lit8 v7, v7, 0x1

    goto :goto_18e

    :cond_18f
    :goto_18f
    const/16 v7, -0x60

    :goto_190
    const/16 v12, -0x5b

    if-ge v7, v12, :cond_191

    const/16 v12, 0xc8

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 211
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x20411e44

    if-ne v12, v13, :cond_190

    goto :goto_191

    :cond_190
    add-int/lit8 v7, v7, 0x1

    goto :goto_190

    :cond_191
    :goto_191
    const/16 v7, -0x33

    :goto_192
    const/16 v12, -0x1f

    if-ge v7, v12, :cond_193

    const/16 v12, 0xc9

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 212
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x2939c9c4

    if-ne v12, v13, :cond_192

    goto :goto_193

    :cond_192
    add-int/lit8 v7, v7, 0x1

    goto :goto_192

    :cond_193
    :goto_193
    const/16 v7, -0x6a

    :goto_194
    const/16 v12, -0x5b

    if-ge v7, v12, :cond_195

    const/16 v12, 0xca

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 213
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x66334cd

    if-ne v12, v13, :cond_194

    goto :goto_195

    :cond_194
    add-int/lit8 v7, v7, 0x1

    goto :goto_194

    :cond_195
    :goto_195
    const/16 v7, 0x45

    :goto_196
    const/16 v12, 0x5b

    if-ge v7, v12, :cond_197

    const/16 v12, 0xcb

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 214
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x34180a5a

    if-ne v12, v13, :cond_196

    goto :goto_197

    :cond_196
    add-int/lit8 v7, v7, 0x1

    goto :goto_196

    :cond_197
    :goto_197
    const/16 v7, 0x66

    :goto_198
    const/16 v12, 0x74

    if-ge v7, v12, :cond_199

    const/16 v12, 0xcc

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 215
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x7af1b731

    if-ne v12, v13, :cond_198

    goto :goto_199

    :cond_198
    add-int/lit8 v7, v7, 0x1

    goto :goto_198

    :cond_199
    :goto_199
    const/16 v7, 0x62

    :goto_19a
    const/16 v12, 0x6a

    if-ge v7, v12, :cond_19b

    const/16 v12, 0xcd

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 216
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x4fe28162

    if-ne v12, v13, :cond_19a

    goto :goto_19b

    :cond_19a
    add-int/lit8 v7, v7, 0x1

    goto :goto_19a

    :cond_19b
    :goto_19b
    const/16 v7, -0x3b

    :goto_19c
    const/16 v12, -0x36

    if-ge v7, v12, :cond_19d

    const/16 v12, 0xce

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 217
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x798b5ad9

    if-ne v12, v13, :cond_19c

    goto :goto_19d

    :cond_19c
    add-int/lit8 v7, v7, 0x1

    goto :goto_19c

    :cond_19d
    :goto_19d
    const/16 v7, -0x1c

    :goto_19e
    const/16 v12, -0x11

    if-ge v7, v12, :cond_19f

    const/16 v12, 0xcf

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 218
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x1ae7f903

    if-ne v12, v13, :cond_19e

    goto :goto_19f

    :cond_19e
    add-int/lit8 v7, v7, 0x1

    goto :goto_19e

    :cond_19f
    :goto_19f
    const/16 v7, -0x1c

    :goto_1a0
    const/16 v12, -0xd

    if-ge v7, v12, :cond_1a1

    const/16 v12, 0xd0

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 219
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x405817cb

    if-ne v12, v13, :cond_1a0

    goto :goto_1a1

    :cond_1a0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1a0

    :cond_1a1
    :goto_1a1
    const/16 v7, 0x12

    :goto_1a2
    const/16 v12, 0x21

    if-ge v7, v12, :cond_1a3

    const/16 v12, 0xd1

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 220
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x5dd2fdaf

    if-ne v12, v13, :cond_1a2

    goto :goto_1a3

    :cond_1a2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1a2

    :cond_1a3
    :goto_1a3
    const/16 v7, -0x67

    :goto_1a4
    const/16 v12, -0x51

    if-ge v7, v12, :cond_1a5

    const/16 v12, 0xd2

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 221
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x2de55f0b

    if-ne v12, v13, :cond_1a4

    goto :goto_1a5

    :cond_1a4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1a4

    :cond_1a5
    :goto_1a5
    const/16 v7, -0xe

    :goto_1a6
    const/16 v12, 0xb

    if-ge v7, v12, :cond_1a7

    const/16 v12, 0xd3

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 222
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x145879bb

    if-ne v12, v13, :cond_1a6

    goto :goto_1a7

    :cond_1a6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1a6

    :cond_1a7
    :goto_1a7
    const/16 v7, -0x80

    :goto_1a8
    const/16 v12, -0x73

    if-ge v7, v12, :cond_1a9

    const/16 v12, 0xd4

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 223
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3a67897d

    if-ne v12, v13, :cond_1a8

    goto :goto_1a9

    :cond_1a8
    add-int/lit8 v7, v7, 0x1

    goto :goto_1a8

    :cond_1a9
    :goto_1a9
    const/16 v7, -0x71

    :goto_1aa
    if-ge v7, v1, :cond_1ab

    const/16 v12, 0xd5

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 224
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0xc812f40

    if-ne v12, v13, :cond_1aa

    goto :goto_1ab

    :cond_1aa
    add-int/lit8 v7, v7, 0x1

    goto :goto_1aa

    :cond_1ab
    :goto_1ab
    const/16 v7, -0x34

    :goto_1ac
    const/16 v12, -0x22

    if-ge v7, v12, :cond_1ad

    const/16 v12, 0xd6

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 225
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0xdf01be4

    if-ne v12, v13, :cond_1ac

    goto :goto_1ad

    :cond_1ac
    add-int/lit8 v7, v7, 0x1

    goto :goto_1ac

    :cond_1ad
    :goto_1ad
    const/16 v7, 0x25

    :goto_1ae
    const/16 v12, 0x32

    if-ge v7, v12, :cond_1af

    const/16 v12, 0xd7

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 226
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3e703de3

    if-ne v12, v13, :cond_1ae

    goto :goto_1af

    :cond_1ae
    add-int/lit8 v7, v7, 0x1

    goto :goto_1ae

    :cond_1af
    :goto_1af
    const/16 v7, 0x6c

    :goto_1b0
    const/16 v12, 0x7f

    if-ge v7, v12, :cond_1b1

    const/16 v12, 0xd8

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 227
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x1844e75

    if-ne v12, v13, :cond_1b0

    goto :goto_1b1

    :cond_1b0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b0

    :cond_1b1
    :goto_1b1
    const/16 v7, -0x44

    :goto_1b2
    const/16 v12, -0x34

    if-ge v7, v12, :cond_1b3

    const/16 v12, 0xd9

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 228
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x7482e6cb

    if-ne v12, v13, :cond_1b2

    goto :goto_1b3

    :cond_1b2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b2

    :cond_1b3
    :goto_1b3
    const/4 v7, 0x1

    :goto_1b4
    const/16 v12, 0xa

    if-ge v7, v12, :cond_1b5

    const/16 v12, 0xda

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 229
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x5742b59b

    if-ne v12, v13, :cond_1b4

    goto :goto_1b5

    :cond_1b4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b4

    :cond_1b5
    :goto_1b5
    const/16 v7, -0x7a

    :goto_1b6
    const/16 v12, -0x72

    if-ge v7, v12, :cond_1b7

    const/16 v12, 0xdb

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 230
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x3024d6e

    if-ne v12, v13, :cond_1b6

    goto :goto_1b7

    :cond_1b6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b6

    :cond_1b7
    :goto_1b7
    const/16 v7, -0x74

    :goto_1b8
    if-ge v7, v1, :cond_1b9

    const/16 v12, 0xdc

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 231
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0xc4f18cc

    if-ne v12, v13, :cond_1b8

    goto :goto_1b9

    :cond_1b8
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b8

    :cond_1b9
    :goto_1b9
    const/16 v7, -0x79

    :goto_1ba
    const/16 v12, -0x6b

    if-ge v7, v12, :cond_1bb

    const/16 v12, 0xdd

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 232
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x78b455d2

    if-ne v12, v13, :cond_1ba

    goto :goto_1bb

    :cond_1ba
    add-int/lit8 v7, v7, 0x1

    goto :goto_1ba

    :cond_1bb
    :goto_1bb
    const/16 v7, -0x34

    :goto_1bc
    if-ge v7, v6, :cond_1bd

    const/16 v12, 0xde

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 233
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x583c444b

    if-ne v12, v13, :cond_1bc

    goto :goto_1bd

    :cond_1bc
    add-int/lit8 v7, v7, 0x1

    goto :goto_1bc

    :cond_1bd
    :goto_1bd
    const/16 v7, 0x5d

    :goto_1be
    const/16 v12, 0x6e

    if-ge v7, v12, :cond_1bf

    const/16 v12, 0xdf

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 234
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3b85dcbe

    if-ne v12, v13, :cond_1be

    goto :goto_1bf

    :cond_1be
    add-int/lit8 v7, v7, 0x1

    goto :goto_1be

    :cond_1bf
    :goto_1bf
    const/16 v7, -0x66

    :goto_1c0
    const/16 v12, -0x5a

    if-ge v7, v12, :cond_1c1

    const/16 v12, 0xe0

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 235
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0xbe64017

    if-ne v12, v13, :cond_1c0

    goto :goto_1c1

    :cond_1c0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c0

    :cond_1c1
    :goto_1c1
    const/16 v7, -0x80

    :goto_1c2
    const/16 v12, -0x6c

    if-ge v7, v12, :cond_1c3

    const/16 v12, 0xe1

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 236
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x5f7ea099

    if-ne v12, v13, :cond_1c2

    goto :goto_1c3

    :cond_1c2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c2

    :cond_1c3
    :goto_1c3
    const/16 v7, 0x24

    :goto_1c4
    const/16 v12, 0x32

    if-ge v7, v12, :cond_1c5

    const/16 v12, 0xe2

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 237
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3ae6054

    if-ne v12, v13, :cond_1c4

    goto :goto_1c5

    :cond_1c4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c4

    :cond_1c5
    :goto_1c5
    const/16 v7, -0x6e

    :goto_1c6
    if-ge v7, v1, :cond_1c7

    const/16 v12, 0xe3

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 238
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x6b3433fc

    if-ne v12, v13, :cond_1c6

    goto :goto_1c7

    :cond_1c6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c6

    :cond_1c7
    :goto_1c7
    const/16 v7, -0x5f

    :goto_1c8
    const/16 v12, -0x4a

    if-ge v7, v12, :cond_1c9

    const/16 v12, 0xe4

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 239
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x2c7b08f8

    if-ne v12, v13, :cond_1c8

    goto :goto_1c9

    :cond_1c8
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c8

    :cond_1c9
    :goto_1c9
    const/16 v7, -0x3d

    :goto_1ca
    const/16 v12, -0x2a

    if-ge v7, v12, :cond_1cb

    const/16 v12, 0xe5

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 240
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x6c3946a5

    if-ne v12, v13, :cond_1ca

    goto :goto_1cb

    :cond_1ca
    add-int/lit8 v7, v7, 0x1

    goto :goto_1ca

    :cond_1cb
    :goto_1cb
    const/16 v7, -0x80

    :goto_1cc
    const/16 v12, -0x6e

    if-ge v7, v12, :cond_1cd

    const/16 v12, 0xe6

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 241
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x1e0cd676

    if-ne v12, v13, :cond_1cc

    goto :goto_1cd

    :cond_1cc
    add-int/lit8 v7, v7, 0x1

    goto :goto_1cc

    :cond_1cd
    :goto_1cd
    const/16 v7, 0x1a

    :goto_1ce
    const/16 v12, 0x1e

    if-ge v7, v12, :cond_1cf

    const/16 v12, 0xe7

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 242
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x7199bc85

    if-ne v12, v13, :cond_1ce

    goto :goto_1cf

    :cond_1ce
    add-int/lit8 v7, v7, 0x1

    goto :goto_1ce

    :cond_1cf
    :goto_1cf
    const/16 v7, 0xe

    :goto_1d0
    if-ge v7, v9, :cond_1d1

    const/16 v12, 0xe8

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 243
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x5759d6ab

    if-ne v12, v13, :cond_1d0

    goto :goto_1d1

    :cond_1d0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1d0

    :cond_1d1
    :goto_1d1
    const/16 v7, -0x68

    :goto_1d2
    const/16 v12, -0x52

    if-ge v7, v12, :cond_1d3

    const/16 v12, 0xe9

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 244
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x1bb0e2b5

    if-ne v12, v13, :cond_1d2

    goto :goto_1d3

    :cond_1d2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1d2

    :cond_1d3
    :goto_1d3
    const/16 v7, -0x3a

    :goto_1d4
    const/16 v12, -0x31

    if-ge v7, v12, :cond_1d5

    const/16 v12, 0xea

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 245
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x56fe0c24

    if-ne v12, v13, :cond_1d4

    goto :goto_1d5

    :cond_1d4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1d4

    :cond_1d5
    :goto_1d5
    const/16 v7, -0x20

    :goto_1d6
    const/16 v12, -0xf

    if-ge v7, v12, :cond_1d7

    const/16 v12, 0xeb

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 246
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x5b0944ab

    if-ne v12, v13, :cond_1d6

    goto :goto_1d7

    :cond_1d6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1d6

    :cond_1d7
    :goto_1d7
    const/16 v7, 0xa

    :goto_1d8
    const/16 v12, 0x1b

    if-ge v7, v12, :cond_1d9

    const/16 v12, 0xec

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 247
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x67f57af6

    if-ne v12, v13, :cond_1d8

    goto :goto_1d9

    :cond_1d8
    add-int/lit8 v7, v7, 0x1

    goto :goto_1d8

    :cond_1d9
    :goto_1d9
    const/16 v7, 0x57

    :goto_1da
    const/16 v12, 0x5f

    if-ge v7, v12, :cond_1db

    const/16 v12, 0xed

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 248
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x6e9981d3

    if-ne v12, v13, :cond_1da

    goto :goto_1db

    :cond_1da
    add-int/lit8 v7, v7, 0x1

    goto :goto_1da

    :cond_1db
    :goto_1db
    const/16 v7, -0xb

    :goto_1dc
    if-ge v7, v3, :cond_1dd

    const/16 v12, 0xee

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 249
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x4d365900

    if-ne v12, v13, :cond_1dc

    goto :goto_1dd

    :cond_1dc
    add-int/lit8 v7, v7, 0x1

    goto :goto_1dc

    :cond_1dd
    :goto_1dd
    const/16 v7, 0x1e

    :goto_1de
    const/16 v12, 0x34

    if-ge v7, v12, :cond_1df

    const/16 v12, 0xef

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 250
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x719c9454

    if-ne v12, v13, :cond_1de

    goto :goto_1df

    :cond_1de
    add-int/lit8 v7, v7, 0x1

    goto :goto_1de

    :cond_1df
    :goto_1df
    const/16 v7, -0x49

    :goto_1e0
    const/16 v12, -0x31

    if-ge v7, v12, :cond_1e1

    const/16 v12, 0xf0

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 251
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3259452f

    if-ne v12, v13, :cond_1e0

    goto :goto_1e1

    :cond_1e0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1e0

    :cond_1e1
    :goto_1e1
    const/16 v7, -0x69

    :goto_1e2
    const/16 v12, -0x4e

    if-ge v7, v12, :cond_1e3

    const/16 v12, 0xf1

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 252
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x6b95262b

    if-ne v12, v13, :cond_1e2

    goto :goto_1e3

    :cond_1e2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1e2

    :cond_1e3
    :goto_1e3
    const/16 v7, 0x61

    :goto_1e4
    const/16 v12, 0x78

    if-ge v7, v12, :cond_1e5

    const/16 v12, 0xf2

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 253
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x15b0ce95

    if-ne v12, v13, :cond_1e4

    goto :goto_1e5

    :cond_1e4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1e4

    :cond_1e5
    :goto_1e5
    const/16 v7, 0x77

    :goto_1e6
    if-ge v7, v2, :cond_1e7

    const/16 v12, 0xf3

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 254
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x265ab096

    if-ne v12, v13, :cond_1e6

    goto :goto_1e7

    :cond_1e6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1e6

    :cond_1e7
    :goto_1e7
    const/16 v7, 0x22

    :goto_1e8
    if-ge v7, v14, :cond_1e9

    const/16 v12, 0xf4

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 255
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x5850df0c

    if-ne v12, v13, :cond_1e8

    goto :goto_1e9

    :cond_1e8
    add-int/lit8 v7, v7, 0x1

    goto :goto_1e8

    :cond_1e9
    :goto_1e9
    const/16 v7, -0x5c

    :goto_1ea
    const/16 v12, -0x4b

    if-ge v7, v12, :cond_1eb

    const/16 v12, 0xf5

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 256
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x3cee7f09

    if-ne v12, v13, :cond_1ea

    goto :goto_1eb

    :cond_1ea
    add-int/lit8 v7, v7, 0x1

    goto :goto_1ea

    :cond_1eb
    :goto_1eb
    const/16 v7, -0x37

    :goto_1ec
    const/16 v12, -0x21

    if-ge v7, v12, :cond_1ed

    const/16 v12, 0xf6

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 257
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x12874f4f

    if-ne v12, v13, :cond_1ec

    goto :goto_1ed

    :cond_1ec
    add-int/lit8 v7, v7, 0x1

    goto :goto_1ec

    :cond_1ed
    :goto_1ed
    const/16 v7, 0xe

    :goto_1ee
    const/16 v12, 0x1f

    if-ge v7, v12, :cond_1ef

    const/16 v12, 0xf7

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 258
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x4dc358af

    if-ne v12, v13, :cond_1ee

    goto :goto_1ef

    :cond_1ee
    add-int/lit8 v7, v7, 0x1

    goto :goto_1ee

    :cond_1ef
    :goto_1ef
    const/16 v7, 0x32

    :goto_1f0
    if-ge v7, v14, :cond_1f1

    const/16 v12, 0xf8

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 259
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x52c7ffe6

    if-ne v12, v13, :cond_1f0

    goto :goto_1f1

    :cond_1f0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f0

    :cond_1f1
    :goto_1f1
    const/16 v7, 0x5e

    :goto_1f2
    const/16 v12, 0x7a

    if-ge v7, v12, :cond_1f3

    const/16 v12, 0xf9

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 260
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3e2aa2d1

    if-ne v12, v13, :cond_1f2

    goto :goto_1f3

    :cond_1f2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f2

    :cond_1f3
    :goto_1f3
    const/16 v7, -0x38

    :goto_1f4
    const/16 v12, -0x2b

    if-ge v7, v12, :cond_1f5

    const/16 v12, 0xfa

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 261
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x6f7e63ea

    if-ne v12, v13, :cond_1f4

    goto :goto_1f5

    :cond_1f4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f4

    :cond_1f5
    :goto_1f5
    const/16 v7, -0xb

    :goto_1f6
    if-ge v7, v5, :cond_1f7

    const/16 v12, 0xfb

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 262
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x4121897d

    if-ne v12, v13, :cond_1f6

    goto :goto_1f7

    :cond_1f6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f6

    :cond_1f7
    :goto_1f7
    const/16 v7, -0x46

    :goto_1f8
    const/16 v12, -0x3b

    if-ge v7, v12, :cond_1f9

    const/16 v12, 0xfc

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 263
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x5f15ceec

    if-ne v12, v13, :cond_1f8

    goto :goto_1f9

    :cond_1f8
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f8

    :cond_1f9
    :goto_1f9
    const/16 v7, -0x4e

    :goto_1fa
    const/16 v12, -0x36

    if-ge v7, v12, :cond_1fb

    const/16 v12, 0xfd

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 264
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x30f1cccc

    if-ne v12, v13, :cond_1fa

    goto :goto_1fb

    :cond_1fa
    add-int/lit8 v7, v7, 0x1

    goto :goto_1fa

    :cond_1fb
    :goto_1fb
    const/16 v7, -0x35

    :goto_1fc
    const/16 v12, -0x24

    if-ge v7, v12, :cond_1fd

    const/16 v12, 0xfe

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 265
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x547ec948

    if-ne v12, v13, :cond_1fc

    goto :goto_1fd

    :cond_1fc
    add-int/lit8 v7, v7, 0x1

    goto :goto_1fc

    :cond_1fd
    :goto_1fd
    const/16 v7, 0x35

    :goto_1fe
    const/16 v12, 0x46

    if-ge v7, v12, :cond_1ff

    const/16 v12, 0xff

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 266
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x4df1e42f

    if-ne v12, v13, :cond_1fe

    goto :goto_1ff

    :cond_1fe
    add-int/lit8 v7, v7, 0x1

    goto :goto_1fe

    :cond_1ff
    :goto_1ff
    const/16 v7, 0x6c

    :goto_200
    const/16 v12, 0x74

    if-ge v7, v12, :cond_201

    const/16 v12, 0x100

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 267
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x4d5275bb    # 2.20683184E8f

    if-ne v12, v13, :cond_200

    goto :goto_201

    :cond_200
    add-int/lit8 v7, v7, 0x1

    goto :goto_200

    :cond_201
    :goto_201
    const/16 v7, 0x27

    :goto_202
    const/16 v12, 0x42

    if-ge v7, v12, :cond_203

    const/16 v12, 0x101

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 268
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x34963d34

    if-ne v12, v13, :cond_202

    goto :goto_203

    :cond_202
    add-int/lit8 v7, v7, 0x1

    goto :goto_202

    :cond_203
    :goto_203
    const/16 v7, -0x7a

    :goto_204
    const/16 v12, -0x66

    if-ge v7, v12, :cond_205

    const/16 v12, 0x102

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 269
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x6ce4e5ce

    if-ne v12, v13, :cond_204

    goto :goto_205

    :cond_204
    add-int/lit8 v7, v7, 0x1

    goto :goto_204

    :cond_205
    :goto_205
    const/16 v7, -0x6e

    :goto_206
    const/16 v12, -0x65

    if-ge v7, v12, :cond_207

    const/16 v12, 0x103

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 270
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x706b6673

    if-ne v12, v13, :cond_206

    goto :goto_207

    :cond_206
    add-int/lit8 v7, v7, 0x1

    goto :goto_206

    :cond_207
    :goto_207
    const/16 v7, 0x70

    :goto_208
    if-ge v7, v2, :cond_209

    const/16 v12, 0x104

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 271
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x402e942

    if-ne v12, v13, :cond_208

    goto :goto_209

    :cond_208
    add-int/lit8 v7, v7, 0x1

    goto :goto_208

    :cond_209
    :goto_209
    const/16 v7, 0x54

    :goto_20a
    const/16 v12, 0x63

    if-ge v7, v12, :cond_20b

    const/16 v12, 0x105

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 272
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x81ca4fd

    if-ne v12, v13, :cond_20a

    goto :goto_20b

    :cond_20a
    add-int/lit8 v7, v7, 0x1

    goto :goto_20a

    :cond_20b
    :goto_20b
    const/16 v7, -0x53

    :goto_20c
    const/16 v12, -0x40

    if-ge v7, v12, :cond_20d

    const/16 v12, 0x106

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 273
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x5824d271

    if-ne v12, v13, :cond_20c

    goto :goto_20d

    :cond_20c
    add-int/lit8 v7, v7, 0x1

    goto :goto_20c

    :cond_20d
    :goto_20d
    const/16 v7, 0x48

    :goto_20e
    const/16 v12, 0x4c

    if-ge v7, v12, :cond_20f

    const/16 v12, 0x107

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 274
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x6b4507ae

    if-ne v12, v13, :cond_20e

    goto :goto_20f

    :cond_20e
    add-int/lit8 v7, v7, 0x1

    goto :goto_20e

    :cond_20f
    :goto_20f
    const/16 v7, -0x7f

    :goto_210
    const/16 v12, -0x74

    if-ge v7, v12, :cond_211

    const/16 v12, 0x108

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 275
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x202f37c2

    if-ne v12, v13, :cond_210

    goto :goto_211

    :cond_210
    add-int/lit8 v7, v7, 0x1

    goto :goto_210

    :cond_211
    :goto_211
    const/16 v7, -0x15

    :goto_212
    const/4 v12, -0x6

    if-ge v7, v12, :cond_213

    const/16 v12, 0x109

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 276
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3d608e1f

    if-ne v12, v13, :cond_212

    goto :goto_213

    :cond_212
    add-int/lit8 v7, v7, 0x1

    goto :goto_212

    :cond_213
    :goto_213
    const/16 v7, -0x2c

    :goto_214
    if-ge v7, v6, :cond_215

    const/16 v12, 0x10a

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 277
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x7b0a2934

    if-ne v12, v13, :cond_214

    goto :goto_215

    :cond_214
    add-int/lit8 v7, v7, 0x1

    goto :goto_214

    :cond_215
    :goto_215
    const/4 v7, -0x8

    :goto_216
    const/16 v12, 0xb

    if-ge v7, v12, :cond_217

    const/16 v12, 0x10b

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 278
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x6d5fe9c0

    if-ne v12, v13, :cond_216

    goto :goto_217

    :cond_216
    add-int/lit8 v7, v7, 0x1

    goto :goto_216

    :cond_217
    :goto_217
    const/16 v7, -0x19

    :goto_218
    if-gez v7, :cond_219

    const/16 v12, 0x10c

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 279
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2c0c399b

    if-ne v12, v13, :cond_218

    goto :goto_219

    :cond_218
    add-int/lit8 v7, v7, 0x1

    goto :goto_218

    :cond_219
    :goto_219
    const/16 v7, 0x21

    :goto_21a
    const/16 v12, 0x31

    if-ge v7, v12, :cond_21b

    const/16 v12, 0x10d

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 280
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x68ac19fa

    if-ne v12, v13, :cond_21a

    goto :goto_21b

    :cond_21a
    add-int/lit8 v7, v7, 0x1

    goto :goto_21a

    :cond_21b
    :goto_21b
    const/16 v7, 0x21

    :goto_21c
    const/16 v12, 0x28

    if-ge v7, v12, :cond_21d

    const/16 v12, 0x10e

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 281
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x1e23fb4b

    if-ne v12, v13, :cond_21c

    goto :goto_21d

    :cond_21c
    add-int/lit8 v7, v7, 0x1

    goto :goto_21c

    :cond_21d
    :goto_21d
    const/16 v7, -0x67

    :goto_21e
    const/16 v12, -0x53

    if-ge v7, v12, :cond_21f

    const/16 v12, 0x10f

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 282
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x53c5880c

    if-ne v12, v13, :cond_21e

    goto :goto_21f

    :cond_21e
    add-int/lit8 v7, v7, 0x1

    goto :goto_21e

    :cond_21f
    :goto_21f
    const/16 v7, -0x3f

    :goto_220
    const/16 v12, -0x3d

    if-ge v7, v12, :cond_221

    const/16 v12, 0x110

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 283
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x1872ae60

    if-ne v12, v13, :cond_220

    goto :goto_221

    :cond_220
    add-int/lit8 v7, v7, 0x1

    goto :goto_220

    :cond_221
    :goto_221
    const/16 v7, -0x63

    :goto_222
    const/16 v12, -0x50

    if-ge v7, v12, :cond_223

    const/16 v12, 0x111

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 284
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x46485337

    if-ne v12, v13, :cond_222

    goto :goto_223

    :cond_222
    add-int/lit8 v7, v7, 0x1

    goto :goto_222

    :cond_223
    :goto_223
    const/16 v7, 0x29

    :goto_224
    if-ge v7, v8, :cond_225

    const/16 v12, 0x112

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 285
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2aed44b1

    if-ne v12, v13, :cond_224

    goto :goto_225

    :cond_224
    add-int/lit8 v7, v7, 0x1

    goto :goto_224

    :cond_225
    :goto_225
    const/16 v7, -0x61

    :goto_226
    if-ge v7, v4, :cond_227

    const/16 v12, 0x113

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 286
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x31fed58d

    if-ne v12, v13, :cond_226

    goto :goto_227

    :cond_226
    add-int/lit8 v7, v7, 0x1

    goto :goto_226

    :cond_227
    :goto_227
    const/16 v7, -0x58

    :goto_228
    const/16 v12, -0x49

    if-ge v7, v12, :cond_229

    const/16 v12, 0x114

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 287
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x11512e3e

    if-ne v12, v13, :cond_228

    goto :goto_229

    :cond_228
    add-int/lit8 v7, v7, 0x1

    goto :goto_228

    :cond_229
    :goto_229
    const/16 v7, -0x34

    :goto_22a
    if-ge v7, v6, :cond_22b

    const/16 v12, 0x115

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 288
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x232756b8

    if-ne v12, v13, :cond_22a

    goto :goto_22b

    :cond_22a
    add-int/lit8 v7, v7, 0x1

    goto :goto_22a

    :cond_22b
    :goto_22b
    const/16 v7, -0x21

    :goto_22c
    const/16 v12, -0xe

    if-ge v7, v12, :cond_22d

    const/16 v12, 0x116

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 289
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2c426af1

    if-ne v12, v13, :cond_22c

    goto :goto_22d

    :cond_22c
    add-int/lit8 v7, v7, 0x1

    goto :goto_22c

    :cond_22d
    :goto_22d
    const/16 v7, -0x5e

    :goto_22e
    const/16 v12, -0x4d

    if-ge v7, v12, :cond_22f

    const/16 v12, 0x117

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 290
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2139021

    if-ne v12, v13, :cond_22e

    goto :goto_22f

    :cond_22e
    add-int/lit8 v7, v7, 0x1

    goto :goto_22e

    :cond_22f
    :goto_22f
    const/16 v7, 0x70

    :goto_230
    const/16 v12, 0x7c

    if-ge v7, v12, :cond_231

    const/16 v12, 0x118

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 291
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x48256e06    # 169400.1f

    if-ne v12, v13, :cond_230

    goto :goto_231

    :cond_230
    add-int/lit8 v7, v7, 0x1

    goto :goto_230

    :cond_231
    :goto_231
    const/16 v7, 0x45

    :goto_232
    const/16 v12, 0x53

    if-ge v7, v12, :cond_233

    const/16 v12, 0x119

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 292
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x28200a10

    if-ne v12, v13, :cond_232

    goto :goto_233

    :cond_232
    add-int/lit8 v7, v7, 0x1

    goto :goto_232

    :cond_233
    :goto_233
    const/16 v7, -0x80

    :goto_234
    const/16 v12, -0x6c

    if-ge v7, v12, :cond_235

    const/16 v12, 0x11a

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 293
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x25f8e66d

    if-ne v12, v13, :cond_234

    goto :goto_235

    :cond_234
    add-int/lit8 v7, v7, 0x1

    goto :goto_234

    :cond_235
    :goto_235
    const/16 v7, -0x71

    :goto_236
    const/16 v12, -0x5f

    if-ge v7, v12, :cond_237

    const/16 v12, 0x11b

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 294
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x60b30d96

    if-ne v12, v13, :cond_236

    goto :goto_237

    :cond_236
    add-int/lit8 v7, v7, 0x1

    goto :goto_236

    :cond_237
    :goto_237
    const/16 v7, 0x44

    :goto_238
    const/16 v12, 0x53

    if-ge v7, v12, :cond_239

    const/16 v12, 0x11c

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 295
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3e524148

    if-ne v12, v13, :cond_238

    goto :goto_239

    :cond_238
    add-int/lit8 v7, v7, 0x1

    goto :goto_238

    :cond_239
    :goto_239
    const/4 v7, 0x2

    :goto_23a
    const/16 v12, 0x10

    if-ge v7, v12, :cond_23b

    const/16 v12, 0x11d

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 296
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x46c9014b

    if-ne v12, v13, :cond_23a

    goto :goto_23b

    :cond_23a
    add-int/lit8 v7, v7, 0x1

    goto :goto_23a

    :cond_23b
    :goto_23b
    const/16 v7, -0x3f

    :goto_23c
    const/16 v12, -0x2f

    if-ge v7, v12, :cond_23d

    const/16 v12, 0x11e

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 297
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x396c82b0

    if-ne v12, v13, :cond_23c

    goto :goto_23d

    :cond_23c
    add-int/lit8 v7, v7, 0x1

    goto :goto_23c

    :cond_23d
    :goto_23d
    const/16 v7, -0x11

    :goto_23e
    const/16 v12, 0xe

    if-ge v7, v12, :cond_23f

    const/16 v12, 0x11f

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 298
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x5d7f5cb6

    if-ne v12, v13, :cond_23e

    goto :goto_23f

    :cond_23e
    add-int/lit8 v7, v7, 0x1

    goto :goto_23e

    :cond_23f
    :goto_23f
    const/16 v7, -0x13

    :goto_240
    const/4 v12, 0x6

    if-ge v7, v12, :cond_241

    const/16 v12, 0x120

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 299
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x421d9a59

    if-ne v12, v13, :cond_240

    goto :goto_241

    :cond_240
    add-int/lit8 v7, v7, 0x1

    goto :goto_240

    :cond_241
    :goto_241
    const/16 v7, 0x48

    :goto_242
    const/16 v12, 0x5d

    if-ge v7, v12, :cond_243

    const/16 v12, 0x121

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 300
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x5cf8f192

    if-ne v12, v13, :cond_242

    goto :goto_243

    :cond_242
    add-int/lit8 v7, v7, 0x1

    goto :goto_242

    :cond_243
    :goto_243
    const/16 v7, 0x6c

    :goto_244
    const/16 v12, 0x6f

    if-ge v7, v12, :cond_245

    const/16 v12, 0x122

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 301
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x140db301

    if-ne v12, v13, :cond_244

    goto :goto_245

    :cond_244
    add-int/lit8 v7, v7, 0x1

    goto :goto_244

    :cond_245
    :goto_245
    const/16 v7, -0x15

    :goto_246
    const/4 v12, -0x7

    if-ge v7, v12, :cond_247

    const/16 v12, 0x123

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 302
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0xe65b853

    if-ne v12, v13, :cond_246

    goto :goto_247

    :cond_246
    add-int/lit8 v7, v7, 0x1

    goto :goto_246

    :cond_247
    :goto_247
    const/16 v7, -0x3b

    :goto_248
    if-ge v7, v10, :cond_249

    const/16 v12, 0x124

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 303
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x6f7fa306

    if-ne v12, v13, :cond_248

    goto :goto_249

    :cond_248
    add-int/lit8 v7, v7, 0x1

    goto :goto_248

    :cond_249
    :goto_249
    const/16 v7, 0x4b

    :goto_24a
    const/16 v12, 0x54

    if-ge v7, v12, :cond_24b

    const/16 v12, 0x125

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 304
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x21861a28

    if-ne v12, v13, :cond_24a

    goto :goto_24b

    :cond_24a
    add-int/lit8 v7, v7, 0x1

    goto :goto_24a

    :cond_24b
    :goto_24b
    const/16 v7, -0x35

    :goto_24c
    if-ge v7, v6, :cond_24d

    const/16 v12, 0x126

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 305
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x3e82ff73

    if-ne v12, v13, :cond_24c

    goto :goto_24d

    :cond_24c
    add-int/lit8 v7, v7, 0x1

    goto :goto_24c

    :cond_24d
    :goto_24d
    const/16 v7, -0x7f

    :goto_24e
    const/16 v12, -0x75

    if-ge v7, v12, :cond_24f

    const/16 v12, 0x127

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 306
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x7abae5d0

    if-ne v12, v13, :cond_24e

    goto :goto_24f

    :cond_24e
    add-int/lit8 v7, v7, 0x1

    goto :goto_24e

    :cond_24f
    :goto_24f
    const/16 v7, 0x4f

    :goto_250
    const/16 v12, 0x62

    if-ge v7, v12, :cond_251

    const/16 v12, 0x128

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 307
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x1b5a6646

    if-ne v12, v13, :cond_250

    goto :goto_251

    :cond_250
    add-int/lit8 v7, v7, 0x1

    goto :goto_250

    :cond_251
    :goto_251
    const/16 v7, 0x51

    :goto_252
    const/16 v12, 0x62

    if-ge v7, v12, :cond_253

    const/16 v12, 0x129

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 308
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x5c434a7a

    if-ne v12, v13, :cond_252

    goto :goto_253

    :cond_252
    add-int/lit8 v7, v7, 0x1

    goto :goto_252

    :cond_253
    :goto_253
    const/16 v7, -0x19

    :goto_254
    const/4 v12, -0x1

    if-ge v7, v12, :cond_255

    const/16 v12, 0x12a

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 309
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x1f2bace

    if-ne v12, v13, :cond_254

    goto :goto_255

    :cond_254
    add-int/lit8 v7, v7, 0x1

    goto :goto_254

    :cond_255
    :goto_255
    const/16 v7, 0x1f

    :goto_256
    const/16 v12, 0x2b

    if-ge v7, v12, :cond_257

    const/16 v12, 0x12b

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 310
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x226ecaf3

    if-ne v12, v13, :cond_256

    goto :goto_257

    :cond_256
    add-int/lit8 v7, v7, 0x1

    goto :goto_256

    :cond_257
    :goto_257
    const/16 v7, 0x44

    :goto_258
    const/16 v12, 0x62

    if-ge v7, v12, :cond_259

    const/16 v12, 0x12c

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 311
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x33af34a4

    if-ne v12, v13, :cond_258

    goto :goto_259

    :cond_258
    add-int/lit8 v7, v7, 0x1

    goto :goto_258

    :cond_259
    :goto_259
    const/16 v7, 0x2b

    :goto_25a
    const/16 v12, 0x32

    if-ge v7, v12, :cond_25b

    const/16 v12, 0x12d

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 312
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0xa44a445

    if-ne v12, v13, :cond_25a

    goto :goto_25b

    :cond_25a
    add-int/lit8 v7, v7, 0x1

    goto :goto_25a

    :cond_25b
    :goto_25b
    const/16 v7, -0x80

    :goto_25c
    const/16 v12, -0x70

    if-ge v7, v12, :cond_25d

    const/16 v12, 0x12e

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 313
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x33e1b507    # -4.1495524E7f

    if-ne v12, v13, :cond_25c

    goto :goto_25d

    :cond_25c
    add-int/lit8 v7, v7, 0x1

    goto :goto_25c

    :cond_25d
    :goto_25d
    const/16 v7, -0x29

    :goto_25e
    const/16 v12, -0x23

    if-ge v7, v12, :cond_25f

    const/16 v12, 0x12f

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 314
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x57e31853

    if-ne v12, v13, :cond_25e

    goto :goto_25f

    :cond_25e
    add-int/lit8 v7, v7, 0x1

    goto :goto_25e

    :cond_25f
    :goto_25f
    const/16 v7, -0x80

    :goto_260
    const/16 v12, -0x77

    if-ge v7, v12, :cond_261

    const/16 v12, 0x130

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 315
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x1b1102c4

    if-ne v12, v13, :cond_260

    goto :goto_261

    :cond_260
    add-int/lit8 v7, v7, 0x1

    goto :goto_260

    :cond_261
    :goto_261
    const/16 v7, -0x3d

    :goto_262
    const/16 v12, -0x2f

    if-ge v7, v12, :cond_263

    const/16 v12, 0x131

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 316
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x5779382e

    if-ne v12, v13, :cond_262

    goto :goto_263

    :cond_262
    add-int/lit8 v7, v7, 0x1

    goto :goto_262

    :cond_263
    :goto_263
    const/16 v7, -0x37

    :goto_264
    const/16 v12, -0x29

    if-ge v7, v12, :cond_265

    const/16 v12, 0x132

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 317
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x6981f50c

    if-ne v12, v13, :cond_264

    goto :goto_265

    :cond_264
    add-int/lit8 v7, v7, 0x1

    goto :goto_264

    :cond_265
    :goto_265
    const/16 v7, 0x17

    :goto_266
    const/16 v12, 0x1d

    if-ge v7, v12, :cond_267

    const/16 v12, 0x133

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 318
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x68a10ffa

    if-ne v12, v13, :cond_266

    goto :goto_267

    :cond_266
    add-int/lit8 v7, v7, 0x1

    goto :goto_266

    :cond_267
    :goto_267
    const/16 v7, -0x6d

    :goto_268
    const/16 v12, -0x60

    if-ge v7, v12, :cond_269

    const/16 v12, 0x134

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 319
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x53f04b5c

    if-ne v12, v13, :cond_268

    goto :goto_269

    :cond_268
    add-int/lit8 v7, v7, 0x1

    goto :goto_268

    :cond_269
    :goto_269
    const/16 v7, -0x3f

    :goto_26a
    const/16 v12, -0x2c

    if-ge v7, v12, :cond_26b

    const/16 v12, 0x135

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 320
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0xcbedbd1

    if-ne v12, v13, :cond_26a

    goto :goto_26b

    :cond_26a
    add-int/lit8 v7, v7, 0x1

    goto :goto_26a

    :cond_26b
    :goto_26b
    const/16 v7, 0x38

    :goto_26c
    const/16 v12, 0x55

    if-ge v7, v12, :cond_26d

    const/16 v12, 0x136

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 321
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0xe37b878

    if-ne v12, v13, :cond_26c

    goto :goto_26d

    :cond_26c
    add-int/lit8 v7, v7, 0x1

    goto :goto_26c

    :cond_26d
    :goto_26d
    const/16 v7, -0x80

    :goto_26e
    const/16 v12, -0x78

    if-ge v7, v12, :cond_26f

    const/16 v12, 0x137

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 322
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2f033ed0

    if-ne v12, v13, :cond_26e

    goto :goto_26f

    :cond_26e
    add-int/lit8 v7, v7, 0x1

    goto :goto_26e

    :cond_26f
    :goto_26f
    const/16 v7, 0x23

    :goto_270
    const/16 v12, 0x33

    if-ge v7, v12, :cond_271

    const/16 v12, 0x138

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 323
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x38533b28

    if-ne v12, v13, :cond_270

    goto :goto_271

    :cond_270
    add-int/lit8 v7, v7, 0x1

    goto :goto_270

    :cond_271
    :goto_271
    const/16 v7, -0x43

    :goto_272
    if-ge v7, v10, :cond_273

    const/16 v12, 0x139

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 324
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x739586cb

    if-ne v12, v13, :cond_272

    goto :goto_273

    :cond_272
    add-int/lit8 v7, v7, 0x1

    goto :goto_272

    :cond_273
    :goto_273
    const/4 v7, 0x2

    :goto_274
    const/16 v12, 0x9

    if-ge v7, v12, :cond_275

    const/16 v12, 0x13a

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 325
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x1dfc08bc

    if-ne v12, v13, :cond_274

    goto :goto_275

    :cond_274
    add-int/lit8 v7, v7, 0x1

    goto :goto_274

    :cond_275
    :goto_275
    const/16 v7, -0x48

    :goto_276
    const/16 v12, -0x2f

    if-ge v7, v12, :cond_277

    const/16 v12, 0x13b

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 326
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x71d19abe

    if-ne v12, v13, :cond_276

    goto :goto_277

    :cond_276
    add-int/lit8 v7, v7, 0x1

    goto :goto_276

    :cond_277
    :goto_277
    const/16 v7, -0x54

    :goto_278
    const/16 v12, -0x43

    if-ge v7, v12, :cond_279

    const/16 v12, 0x13c

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 327
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x475ef1f8

    if-ne v12, v13, :cond_278

    goto :goto_279

    :cond_278
    add-int/lit8 v7, v7, 0x1

    goto :goto_278

    :cond_279
    :goto_279
    const/16 v7, -0x80

    :goto_27a
    const/16 v12, -0x78

    if-ge v7, v12, :cond_27b

    const/16 v12, 0x13d

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 328
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2e0bf649

    if-ne v12, v13, :cond_27a

    goto :goto_27b

    :cond_27a
    add-int/lit8 v7, v7, 0x1

    goto :goto_27a

    :cond_27b
    :goto_27b
    const/16 v7, -0x36

    :goto_27c
    const/16 v12, -0x20

    if-ge v7, v12, :cond_27d

    const/16 v12, 0x13e

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 329
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x28c82485

    if-ne v12, v13, :cond_27c

    goto :goto_27d

    :cond_27c
    add-int/lit8 v7, v7, 0x1

    goto :goto_27c

    :cond_27d
    :goto_27d
    const/16 v7, -0x1e

    :goto_27e
    const/4 v12, -0x8

    if-ge v7, v12, :cond_27f

    const/16 v12, 0x13f

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 330
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x76e70250

    if-ne v12, v13, :cond_27e

    goto :goto_27f

    :cond_27e
    add-int/lit8 v7, v7, 0x1

    goto :goto_27e

    :cond_27f
    :goto_27f
    const/16 v7, 0x3c

    :goto_280
    const/16 v12, 0x57

    if-ge v7, v12, :cond_281

    const/16 v12, 0x140

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 331
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x38c3f712

    if-ne v12, v13, :cond_280

    goto :goto_281

    :cond_280
    add-int/lit8 v7, v7, 0x1

    goto :goto_280

    :cond_281
    :goto_281
    const/16 v7, 0x4e

    :goto_282
    const/16 v12, 0x61

    if-ge v7, v12, :cond_283

    const/16 v12, 0x141

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 332
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x5c3706c4

    if-ne v12, v13, :cond_282

    goto :goto_283

    :cond_282
    add-int/lit8 v7, v7, 0x1

    goto :goto_282

    :cond_283
    :goto_283
    const/16 v7, -0x7a

    :goto_284
    const/16 v12, -0x67

    if-ge v7, v12, :cond_285

    const/16 v12, 0x142

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 333
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x1c43f346

    if-ne v12, v13, :cond_284

    goto :goto_285

    :cond_284
    add-int/lit8 v7, v7, 0x1

    goto :goto_284

    :cond_285
    :goto_285
    const/16 v7, 0x1b

    :goto_286
    const/16 v12, 0x2c

    if-ge v7, v12, :cond_287

    const/16 v12, 0x143

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 334
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x292a7843

    if-ne v12, v13, :cond_286

    goto :goto_287

    :cond_286
    add-int/lit8 v7, v7, 0x1

    goto :goto_286

    :cond_287
    :goto_287
    const/16 v7, 0x71

    :goto_288
    if-ge v7, v2, :cond_289

    const/16 v12, 0x144

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 335
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x6b88bbb

    if-ne v12, v13, :cond_288

    goto :goto_289

    :cond_288
    add-int/lit8 v7, v7, 0x1

    goto :goto_288

    :cond_289
    :goto_289
    const/16 v7, 0x16

    :goto_28a
    const/16 v12, 0x2c

    if-ge v7, v12, :cond_28b

    const/16 v12, 0x145

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 336
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x7322bd7

    if-ne v12, v13, :cond_28a

    goto :goto_28b

    :cond_28a
    add-int/lit8 v7, v7, 0x1

    goto :goto_28a

    :cond_28b
    :goto_28b
    const/16 v7, -0x66

    :goto_28c
    const/16 v12, -0x63

    if-ge v7, v12, :cond_28d

    const/16 v12, 0x146

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 337
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x75122b16

    if-ne v12, v13, :cond_28c

    goto :goto_28d

    :cond_28c
    add-int/lit8 v7, v7, 0x1

    goto :goto_28c

    :cond_28d
    :goto_28d
    const/16 v7, 0x20

    :goto_28e
    const/16 v12, 0x31

    if-ge v7, v12, :cond_28f

    const/16 v12, 0x147

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 338
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0xa58423a

    if-ne v12, v13, :cond_28e

    goto :goto_28f

    :cond_28e
    add-int/lit8 v7, v7, 0x1

    goto :goto_28e

    :cond_28f
    :goto_28f
    const/16 v7, -0x42

    :goto_290
    const/16 v12, -0x2a

    if-ge v7, v12, :cond_291

    const/16 v12, 0x148

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 339
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x64ca3a60

    if-ne v12, v13, :cond_290

    goto :goto_291

    :cond_290
    add-int/lit8 v7, v7, 0x1

    goto :goto_290

    :cond_291
    :goto_291
    const/16 v7, -0x78

    :goto_292
    const/16 v12, -0x5b

    if-ge v7, v12, :cond_293

    const/16 v12, 0x149

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 340
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x4ab800cb    # 6029413.5f

    if-ne v12, v13, :cond_292

    goto :goto_293

    :cond_292
    add-int/lit8 v7, v7, 0x1

    goto :goto_292

    :cond_293
    :goto_293
    const/16 v7, 0x27

    :goto_294
    if-ge v7, v15, :cond_295

    const/16 v12, 0x14a

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 341
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x28050444

    if-ne v12, v13, :cond_294

    goto :goto_295

    :cond_294
    add-int/lit8 v7, v7, 0x1

    goto :goto_294

    :cond_295
    :goto_295
    const/16 v7, -0x55

    :goto_296
    const/16 v12, -0x4a

    if-ge v7, v12, :cond_297

    const/16 v12, 0x14b

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 342
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2fcb0d9c

    if-ne v12, v13, :cond_296

    goto :goto_297

    :cond_296
    add-int/lit8 v7, v7, 0x1

    goto :goto_296

    :cond_297
    :goto_297
    const/16 v7, -0x64

    :goto_298
    const/16 v12, -0x58

    if-ge v7, v12, :cond_299

    const/16 v12, 0x14c

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 343
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x5965d41e

    if-ne v12, v13, :cond_298

    goto :goto_299

    :cond_298
    add-int/lit8 v7, v7, 0x1

    goto :goto_298

    :cond_299
    :goto_299
    const/16 v7, 0x20

    :goto_29a
    const/16 v12, 0x26

    if-ge v7, v12, :cond_29b

    const/16 v12, 0x14d

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 344
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x496c9a60    # 969126.0f

    if-ne v12, v13, :cond_29a

    goto :goto_29b

    :cond_29a
    add-int/lit8 v7, v7, 0x1

    goto :goto_29a

    :cond_29b
    :goto_29b
    const/16 v7, 0x1e

    :goto_29c
    const/16 v12, 0x39

    if-ge v7, v12, :cond_29d

    const/16 v12, 0x14e

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 345
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x45791b94

    if-ne v12, v13, :cond_29c

    goto :goto_29d

    :cond_29c
    add-int/lit8 v7, v7, 0x1

    goto :goto_29c

    :cond_29d
    :goto_29d
    const/16 v7, 0x52

    :goto_29e
    const/16 v12, 0x6b

    if-ge v7, v12, :cond_29f

    const/16 v12, 0x14f

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 346
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2429527f

    if-ne v12, v13, :cond_29e

    goto :goto_29f

    :cond_29e
    add-int/lit8 v7, v7, 0x1

    goto :goto_29e

    :cond_29f
    :goto_29f
    const/16 v7, -0x4d

    :goto_2a0
    const/16 v12, -0x33

    if-ge v7, v12, :cond_2a1

    const/16 v12, 0x150

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 347
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x3a1d3463

    if-ne v12, v13, :cond_2a0

    goto :goto_2a1

    :cond_2a0
    add-int/lit8 v7, v7, 0x1

    goto :goto_2a0

    :cond_2a1
    :goto_2a1
    const/16 v7, 0x42

    :goto_2a2
    const/16 v12, 0x54

    if-ge v7, v12, :cond_2a3

    const/16 v12, 0x151

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 348
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2ce15279

    if-ne v12, v13, :cond_2a2

    goto :goto_2a3

    :cond_2a2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2a2

    :cond_2a3
    :goto_2a3
    const/16 v7, -0x30

    :goto_2a4
    if-ge v7, v6, :cond_2a5

    const/16 v12, 0x152

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 349
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x1aedcdf8

    if-ne v12, v13, :cond_2a4

    goto :goto_2a5

    :cond_2a4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2a4

    :cond_2a5
    :goto_2a5
    const/4 v7, -0x4

    :goto_2a6
    const/16 v12, 0xe

    if-ge v7, v12, :cond_2a7

    const/16 v12, 0x153

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 350
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x2e202e3

    if-ne v12, v13, :cond_2a6

    goto :goto_2a7

    :cond_2a6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2a6

    :cond_2a7
    :goto_2a7
    const/16 v7, -0x24

    :goto_2a8
    const/16 v12, -0x11

    if-ge v7, v12, :cond_2a9

    const/16 v12, 0x154

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 351
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x5d9a0e3

    if-ne v12, v13, :cond_2a8

    goto :goto_2a9

    :cond_2a8
    add-int/lit8 v7, v7, 0x1

    goto :goto_2a8

    :cond_2a9
    :goto_2a9
    const/4 v7, -0x5

    :goto_2aa
    const/16 v12, 0x10

    if-ge v7, v12, :cond_2ab

    const/16 v12, 0x155

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 352
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x2f4ddc50

    if-ne v12, v13, :cond_2aa

    goto :goto_2ab

    :cond_2aa
    add-int/lit8 v7, v7, 0x1

    goto :goto_2aa

    :cond_2ab
    :goto_2ab
    const/16 v7, 0x4a

    :goto_2ac
    const/16 v12, 0x53

    if-ge v7, v12, :cond_2ad

    const/16 v12, 0x156

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 353
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x355d6813    # -5327862.5f

    if-ne v12, v13, :cond_2ac

    goto :goto_2ad

    :cond_2ac
    add-int/lit8 v7, v7, 0x1

    goto :goto_2ac

    :cond_2ad
    :goto_2ad
    const/16 v7, -0x45

    :goto_2ae
    const/16 v12, -0x3a

    if-ge v7, v12, :cond_2af

    const/16 v12, 0x157

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 354
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x2e500e08

    if-ne v12, v13, :cond_2ae

    goto :goto_2af

    :cond_2ae
    add-int/lit8 v7, v7, 0x1

    goto :goto_2ae

    :cond_2af
    :goto_2af
    const/16 v7, -0x50

    :goto_2b0
    const/16 v12, -0x41

    if-ge v7, v12, :cond_2b1

    const/16 v12, 0x158

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 355
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x5b197440

    if-ne v12, v13, :cond_2b0

    goto :goto_2b1

    :cond_2b0
    add-int/lit8 v7, v7, 0x1

    goto :goto_2b0

    :cond_2b1
    :goto_2b1
    const/16 v7, -0x80

    :goto_2b2
    const/16 v12, -0x76

    if-ge v7, v12, :cond_2b3

    const/16 v12, 0x159

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 356
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x63ced799

    if-ne v12, v13, :cond_2b2

    goto :goto_2b3

    :cond_2b2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2b2

    :cond_2b3
    :goto_2b3
    const/16 v7, 0x50

    :goto_2b4
    const/16 v12, 0x62

    if-ge v7, v12, :cond_2b5

    const/16 v12, 0x15a

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 357
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x7808c101

    if-ne v12, v13, :cond_2b4

    goto :goto_2b5

    :cond_2b4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2b4

    :cond_2b5
    :goto_2b5
    const/16 v7, -0x1f

    :goto_2b6
    const/16 v12, -0x11

    if-ge v7, v12, :cond_2b7

    const/16 v12, 0x15b

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 358
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x6f382d09

    if-ne v12, v13, :cond_2b6

    goto :goto_2b7

    :cond_2b6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2b6

    :cond_2b7
    :goto_2b7
    const/16 v7, -0xd

    :goto_2b8
    const/4 v12, 0x2

    if-ge v7, v12, :cond_2b9

    const/16 v12, 0x15c

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 359
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x52d2c533

    if-ne v12, v13, :cond_2b8

    goto :goto_2b9

    :cond_2b8
    add-int/lit8 v7, v7, 0x1

    goto :goto_2b8

    :cond_2b9
    :goto_2b9
    const/16 v7, -0x68

    :goto_2ba
    const/16 v12, -0x52

    if-ge v7, v12, :cond_2bb

    const/16 v12, 0x15d

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 360
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x6d14005

    if-ne v12, v13, :cond_2ba

    goto :goto_2bb

    :cond_2ba
    add-int/lit8 v7, v7, 0x1

    goto :goto_2ba

    :cond_2bb
    :goto_2bb
    const/16 v7, 0x12

    :goto_2bc
    const/16 v12, 0x1b

    if-ge v7, v12, :cond_2bd

    const/16 v12, 0x15e

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 361
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x6e24ce4c

    if-ne v12, v13, :cond_2bc

    goto :goto_2bd

    :cond_2bc
    add-int/lit8 v7, v7, 0x1

    goto :goto_2bc

    :cond_2bd
    :goto_2bd
    const/16 v7, -0x6b

    :goto_2be
    const/16 v12, -0x58

    if-ge v7, v12, :cond_2bf

    const/16 v12, 0x15f

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 362
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x8b54ea4

    if-ne v12, v13, :cond_2be

    goto :goto_2bf

    :cond_2be
    add-int/lit8 v7, v7, 0x1

    goto :goto_2be

    :cond_2bf
    :goto_2bf
    const/16 v7, -0x1f

    :goto_2c0
    const/16 v12, -0x10

    if-ge v7, v12, :cond_2c1

    const/16 v12, 0x160

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 363
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x1fee7978

    if-ne v12, v13, :cond_2c0

    goto :goto_2c1

    :cond_2c0
    add-int/lit8 v7, v7, 0x1

    goto :goto_2c0

    :cond_2c1
    :goto_2c1
    const/16 v7, -0xd

    :goto_2c2
    const/16 v12, 0xa

    if-ge v7, v12, :cond_2c3

    const/16 v12, 0x161

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 364
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x2dcfb49

    if-ne v12, v13, :cond_2c2

    goto :goto_2c3

    :cond_2c2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2c2

    :cond_2c3
    :goto_2c3
    const/16 v7, -0x5f

    :goto_2c4
    if-ge v7, v11, :cond_2c5

    const/16 v12, 0x162

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 365
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x34f46dfc    # -9146884.0f

    if-ne v12, v13, :cond_2c4

    goto :goto_2c5

    :cond_2c4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2c4

    :cond_2c5
    :goto_2c5
    const/16 v7, -0x3b

    :goto_2c6
    const/16 v12, -0x28

    if-ge v7, v12, :cond_2c7

    const/16 v12, 0x163

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 366
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0xa1123c8

    if-ne v12, v13, :cond_2c6

    goto :goto_2c7

    :cond_2c6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2c6

    :cond_2c7
    :goto_2c7
    const/16 v7, 0x10

    :goto_2c8
    const/16 v12, 0x2a

    if-ge v7, v12, :cond_2c9

    const/16 v12, 0x164

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 367
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x6fed8423

    if-ne v12, v13, :cond_2c8

    goto :goto_2c9

    :cond_2c8
    add-int/lit8 v7, v7, 0x1

    goto :goto_2c8

    :cond_2c9
    :goto_2c9
    const/16 v7, -0x62

    :goto_2ca
    const/16 v12, -0x4e

    if-ge v7, v12, :cond_2cb

    const/16 v12, 0x165

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 368
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3c3b7dcb

    if-ne v12, v13, :cond_2ca

    goto :goto_2cb

    :cond_2ca
    add-int/lit8 v7, v7, 0x1

    goto :goto_2ca

    :cond_2cb
    :goto_2cb
    const/16 v7, 0x5b

    :goto_2cc
    const/16 v12, 0x6d

    if-ge v7, v12, :cond_2cd

    const/16 v12, 0x166

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 369
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x64b5f696

    if-ne v12, v13, :cond_2cc

    goto :goto_2cd

    :cond_2cc
    add-int/lit8 v7, v7, 0x1

    goto :goto_2cc

    :cond_2cd
    :goto_2cd
    const/16 v7, 0x16

    :goto_2ce
    const/16 v12, 0x2b

    if-ge v7, v12, :cond_2cf

    const/16 v12, 0x167

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 370
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x5d6cc1c2

    if-ne v12, v13, :cond_2ce

    goto :goto_2cf

    :cond_2ce
    add-int/lit8 v7, v7, 0x1

    goto :goto_2ce

    :cond_2cf
    :goto_2cf
    const/16 v7, 0x72

    :goto_2d0
    const/16 v12, 0x7f

    if-ge v7, v12, :cond_2d1

    const/16 v12, 0x168

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 371
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x53009198

    if-ne v12, v13, :cond_2d0

    goto :goto_2d1

    :cond_2d0
    add-int/lit8 v7, v7, 0x1

    goto :goto_2d0

    :cond_2d1
    :goto_2d1
    const/16 v7, 0x4d

    :goto_2d2
    const/16 v12, 0x5b

    if-ge v7, v12, :cond_2d3

    const/16 v12, 0x169

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 372
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x72691b58

    if-ne v12, v13, :cond_2d2

    goto :goto_2d3

    :cond_2d2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2d2

    :cond_2d3
    :goto_2d3
    const/4 v7, -0x8

    :goto_2d4
    const/4 v12, -0x2

    if-ge v7, v12, :cond_2d5

    const/16 v12, 0x16a

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 373
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3d78b8a3

    if-ne v12, v13, :cond_2d4

    goto :goto_2d5

    :cond_2d4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2d4

    :cond_2d5
    :goto_2d5
    const/16 v7, -0x6f

    :goto_2d6
    const/16 v12, -0x5c

    if-ge v7, v12, :cond_2d7

    const/16 v12, 0x16b

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 374
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x25919a34

    if-ne v12, v13, :cond_2d6

    goto :goto_2d7

    :cond_2d6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2d6

    :cond_2d7
    :goto_2d7
    const/16 v7, -0x1b

    :goto_2d8
    const/16 v12, -0x14

    if-ge v7, v12, :cond_2d9

    const/16 v12, 0x16c

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 375
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x5c09a86a

    if-ne v12, v13, :cond_2d8

    goto :goto_2d9

    :cond_2d8
    add-int/lit8 v7, v7, 0x1

    goto :goto_2d8

    :cond_2d9
    :goto_2d9
    const/16 v7, -0x10

    :goto_2da
    const/4 v12, -0x7

    if-ge v7, v12, :cond_2db

    const/16 v12, 0x16d

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 376
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x4093351d

    if-ne v12, v13, :cond_2da

    goto :goto_2db

    :cond_2da
    add-int/lit8 v7, v7, 0x1

    goto :goto_2da

    :cond_2db
    :goto_2db
    const/16 v7, 0x1c

    :goto_2dc
    const/16 v12, 0x29

    if-ge v7, v12, :cond_2dd

    const/16 v12, 0x16e

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 377
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0xd89e82b

    if-ne v12, v13, :cond_2dc

    goto :goto_2dd

    :cond_2dc
    add-int/lit8 v7, v7, 0x1

    goto :goto_2dc

    :cond_2dd
    :goto_2dd
    const/16 v7, 0x56

    :goto_2de
    const/16 v12, 0x65

    if-ge v7, v12, :cond_2df

    const/16 v12, 0x16f

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 378
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x2ef0cd20

    if-ne v12, v13, :cond_2de

    goto :goto_2df

    :cond_2de
    add-int/lit8 v7, v7, 0x1

    goto :goto_2de

    :cond_2df
    :goto_2df
    const/16 v7, 0x59

    :goto_2e0
    const/16 v12, 0x63

    if-ge v7, v12, :cond_2e1

    const/16 v12, 0x170

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 379
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x2e6e181e

    if-ne v12, v13, :cond_2e0

    goto :goto_2e1

    :cond_2e0
    add-int/lit8 v7, v7, 0x1

    goto :goto_2e0

    :cond_2e1
    :goto_2e1
    const/16 v7, 0xf

    :goto_2e2
    const/16 v12, 0x23

    if-ge v7, v12, :cond_2e3

    const/16 v12, 0x171

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 380
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x6324b51d

    if-ne v12, v13, :cond_2e2

    goto :goto_2e3

    :cond_2e2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2e2

    :cond_2e3
    :goto_2e3
    const/16 v7, -0x70

    :goto_2e4
    const/16 v12, -0x6e

    if-ge v7, v12, :cond_2e5

    const/16 v12, 0x172

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 381
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x432bc52d

    if-ne v12, v13, :cond_2e4

    goto :goto_2e5

    :cond_2e4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2e4

    :cond_2e5
    :goto_2e5
    const/16 v7, 0x45

    :goto_2e6
    const/16 v12, 0x4b

    if-ge v7, v12, :cond_2e7

    const/16 v12, 0x173

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 382
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3ec1d9b9

    if-ne v12, v13, :cond_2e6

    goto :goto_2e7

    :cond_2e6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2e6

    :cond_2e7
    :goto_2e7
    const/16 v7, -0xb

    :goto_2e8
    const/4 v12, 0x2

    if-ge v7, v12, :cond_2e9

    const/16 v12, 0x174

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 383
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2e25331f

    if-ne v12, v13, :cond_2e8

    goto :goto_2e9

    :cond_2e8
    add-int/lit8 v7, v7, 0x1

    goto :goto_2e8

    :cond_2e9
    :goto_2e9
    const/16 v7, 0x31

    :goto_2ea
    const/16 v12, 0x43

    if-ge v7, v12, :cond_2eb

    const/16 v12, 0x175

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 384
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x5d3edf23

    if-ne v12, v13, :cond_2ea

    goto :goto_2eb

    :cond_2ea
    add-int/lit8 v7, v7, 0x1

    goto :goto_2ea

    :cond_2eb
    :goto_2eb
    const/4 v7, 0x2

    :goto_2ec
    const/16 v12, 0x1c

    if-ge v7, v12, :cond_2ed

    const/16 v12, 0x176

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 385
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x542afc0

    if-ne v12, v13, :cond_2ec

    goto :goto_2ed

    :cond_2ec
    add-int/lit8 v7, v7, 0x1

    goto :goto_2ec

    :cond_2ed
    :goto_2ed
    const/16 v7, -0x68

    :goto_2ee
    const/16 v12, -0x5b

    if-ge v7, v12, :cond_2ef

    const/16 v12, 0x177

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 386
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x4bd96933    # 2.8496486E7f

    if-ne v12, v13, :cond_2ee

    goto :goto_2ef

    :cond_2ee
    add-int/lit8 v7, v7, 0x1

    goto :goto_2ee

    :cond_2ef
    :goto_2ef
    const/16 v7, -0x1e

    :goto_2f0
    const/16 v12, -0xb

    if-ge v7, v12, :cond_2f1

    const/16 v12, 0x178

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 387
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x10c7f7ac

    if-ne v12, v13, :cond_2f0

    goto :goto_2f1

    :cond_2f0
    add-int/lit8 v7, v7, 0x1

    goto :goto_2f0

    :cond_2f1
    :goto_2f1
    const/16 v7, -0x4b

    :goto_2f2
    const/16 v12, -0x39

    if-ge v7, v12, :cond_2f3

    const/16 v12, 0x179

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 388
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2cb4a7d9

    if-ne v12, v13, :cond_2f2

    goto :goto_2f3

    :cond_2f2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2f2

    :cond_2f3
    :goto_2f3
    const/4 v7, 0x4

    :goto_2f4
    const/16 v12, 0x10

    if-ge v7, v12, :cond_2f5

    const/16 v12, 0x17a

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 389
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x199a1d35

    if-ne v12, v13, :cond_2f4

    goto :goto_2f5

    :cond_2f4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2f4

    :cond_2f5
    :goto_2f5
    const/16 v7, -0x71

    :goto_2f6
    const/16 v12, -0x60

    if-ge v7, v12, :cond_2f7

    const/16 v12, 0x17b

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 390
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x57e94699

    if-ne v12, v13, :cond_2f6

    goto :goto_2f7

    :cond_2f6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2f6

    :cond_2f7
    :goto_2f7
    const/16 v7, -0x2b

    :goto_2f8
    const/16 v12, -0x27

    if-ge v7, v12, :cond_2f9

    const/16 v12, 0x17c

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 391
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x4739304f

    if-ne v12, v13, :cond_2f8

    goto :goto_2f9

    :cond_2f8
    add-int/lit8 v7, v7, 0x1

    goto :goto_2f8

    :cond_2f9
    :goto_2f9
    const/16 v7, -0x78

    :goto_2fa
    const/16 v12, -0x69

    if-ge v7, v12, :cond_2fb

    const/16 v12, 0x17d

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 392
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3dc77668

    if-ne v12, v13, :cond_2fa

    goto :goto_2fb

    :cond_2fa
    add-int/lit8 v7, v7, 0x1

    goto :goto_2fa

    :cond_2fb
    :goto_2fb
    const/4 v7, -0x5

    :goto_2fc
    const/16 v12, 0xa

    if-ge v7, v12, :cond_2fd

    const/16 v12, 0x17e

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 393
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x12da4012

    if-ne v12, v13, :cond_2fc

    goto :goto_2fd

    :cond_2fc
    add-int/lit8 v7, v7, 0x1

    goto :goto_2fc

    :cond_2fd
    :goto_2fd
    const/16 v7, -0x50

    :goto_2fe
    const/16 v12, -0x41

    if-ge v7, v12, :cond_2ff

    const/16 v12, 0x17f

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 394
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0xbc0f319

    if-ne v12, v13, :cond_2fe

    goto :goto_2ff

    :cond_2fe
    add-int/lit8 v7, v7, 0x1

    goto :goto_2fe

    :cond_2ff
    :goto_2ff
    const/16 v7, 0x1b

    :goto_300
    const/16 v12, 0x26

    if-ge v7, v12, :cond_301

    const/16 v12, 0x180

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 395
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x4d27b334    # 1.75846208E8f

    if-ne v12, v13, :cond_300

    goto :goto_301

    :cond_300
    add-int/lit8 v7, v7, 0x1

    goto :goto_300

    :cond_301
    :goto_301
    const/16 v7, 0x1d

    :goto_302
    const/16 v12, 0x31

    if-ge v7, v12, :cond_303

    const/16 v12, 0x181

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 396
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x39b6b806

    if-ne v12, v13, :cond_302

    goto :goto_303

    :cond_302
    add-int/lit8 v7, v7, 0x1

    goto :goto_302

    :cond_303
    :goto_303
    const/16 v7, 0x18

    :goto_304
    const/16 v12, 0x33

    if-ge v7, v12, :cond_305

    const/16 v12, 0x182

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 397
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x388c6c01

    if-ne v12, v13, :cond_304

    goto :goto_305

    :cond_304
    add-int/lit8 v7, v7, 0x1

    goto :goto_304

    :cond_305
    :goto_305
    const/16 v7, -0x49

    :goto_306
    const/16 v12, -0x2d

    if-ge v7, v12, :cond_307

    const/16 v12, 0x183

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 398
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0xfacdc4b

    if-ne v12, v13, :cond_306

    goto :goto_307

    :cond_306
    add-int/lit8 v7, v7, 0x1

    goto :goto_306

    :cond_307
    :goto_307
    const/16 v7, 0x54

    :goto_308
    const/16 v12, 0x5c

    if-ge v7, v12, :cond_309

    const/16 v12, 0x184

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 399
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x174cab1e

    if-ne v12, v13, :cond_308

    goto :goto_309

    :cond_308
    add-int/lit8 v7, v7, 0x1

    goto :goto_308

    :cond_309
    :goto_309
    const/16 v7, 0x37

    :goto_30a
    const/16 v12, 0x4c

    if-ge v7, v12, :cond_30b

    const/16 v12, 0x185

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 400
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x17725aa9

    if-ne v12, v13, :cond_30a

    goto :goto_30b

    :cond_30a
    add-int/lit8 v7, v7, 0x1

    goto :goto_30a

    :cond_30b
    :goto_30b
    const/16 v7, 0x27

    :goto_30c
    const/16 v12, 0x39

    if-ge v7, v12, :cond_30d

    const/16 v12, 0x186

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 401
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x50dc6405

    if-ne v12, v13, :cond_30c

    goto :goto_30d

    :cond_30c
    add-int/lit8 v7, v7, 0x1

    goto :goto_30c

    :cond_30d
    :goto_30d
    const/16 v7, -0x80

    :goto_30e
    const/16 v12, -0x74

    if-ge v7, v12, :cond_30f

    const/16 v12, 0x187

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 402
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x4e315cbc

    if-ne v12, v13, :cond_30e

    goto :goto_30f

    :cond_30e
    add-int/lit8 v7, v7, 0x1

    goto :goto_30e

    :cond_30f
    :goto_30f
    const/16 v7, -0x23

    :goto_310
    const/16 v12, -0x16

    if-ge v7, v12, :cond_311

    const/16 v12, 0x188

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 403
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x4bbff51a    # 2.5160244E7f

    if-ne v12, v13, :cond_310

    goto :goto_311

    :cond_310
    add-int/lit8 v7, v7, 0x1

    goto :goto_310

    :cond_311
    :goto_311
    const/16 v7, -0x68

    :goto_312
    const/16 v12, -0x63

    if-ge v7, v12, :cond_313

    const/16 v12, 0x189

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 404
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x7e076396

    if-ne v12, v13, :cond_312

    goto :goto_313

    :cond_312
    add-int/lit8 v7, v7, 0x1

    goto :goto_312

    :cond_313
    :goto_313
    const/16 v7, -0x57

    :goto_314
    const/16 v12, -0x43

    if-ge v7, v12, :cond_315

    const/16 v12, 0x18a

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 405
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x5f2b4da9

    if-ne v12, v13, :cond_314

    goto :goto_315

    :cond_314
    add-int/lit8 v7, v7, 0x1

    goto :goto_314

    :cond_315
    :goto_315
    const/16 v7, -0x67

    :goto_316
    const/16 v12, -0x49

    if-ge v7, v12, :cond_317

    const/16 v12, 0x18b

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 406
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x6cb77861

    if-ne v12, v13, :cond_316

    goto :goto_317

    :cond_316
    add-int/lit8 v7, v7, 0x1

    goto :goto_316

    :cond_317
    :goto_317
    const/16 v7, -0x63

    :goto_318
    const/16 v12, -0x4c

    if-ge v7, v12, :cond_319

    const/16 v12, 0x18c

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 407
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x47c346ed

    if-ne v12, v13, :cond_318

    goto :goto_319

    :cond_318
    add-int/lit8 v7, v7, 0x1

    goto :goto_318

    :cond_319
    :goto_319
    const/16 v7, 0x1c

    :goto_31a
    const/16 v12, 0x32

    if-ge v7, v12, :cond_31b

    const/16 v12, 0x18d

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 408
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x44139269

    if-ne v12, v13, :cond_31a

    goto :goto_31b

    :cond_31a
    add-int/lit8 v7, v7, 0x1

    goto :goto_31a

    :cond_31b
    :goto_31b
    const/16 v7, -0x9

    :goto_31c
    const/16 v12, 0xa

    if-ge v7, v12, :cond_31d

    const/16 v12, 0x18e

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 409
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x29dee8ca

    if-ne v12, v13, :cond_31c

    goto :goto_31d

    :cond_31c
    add-int/lit8 v7, v7, 0x1

    goto :goto_31c

    :cond_31d
    :goto_31d
    const/16 v7, 0x2e

    :goto_31e
    const/16 v12, 0x42

    if-ge v7, v12, :cond_31f

    const/16 v12, 0x18f

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 410
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x7bb7f807

    if-ne v12, v13, :cond_31e

    goto :goto_31f

    :cond_31e
    add-int/lit8 v7, v7, 0x1

    goto :goto_31e

    :cond_31f
    :goto_31f
    const/16 v7, -0x7a

    :goto_320
    const/16 v12, -0x67

    if-ge v7, v12, :cond_321

    const/16 v12, 0x190

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 411
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x55c590ab

    if-ne v12, v13, :cond_320

    goto :goto_321

    :cond_320
    add-int/lit8 v7, v7, 0x1

    goto :goto_320

    :cond_321
    :goto_321
    const/16 v7, 0x35

    :goto_322
    const/16 v12, 0x3b

    if-ge v7, v12, :cond_323

    const/16 v12, 0x191

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 412
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x19e5bc67

    if-ne v12, v13, :cond_322

    goto :goto_323

    :cond_322
    add-int/lit8 v7, v7, 0x1

    goto :goto_322

    :cond_323
    :goto_323
    const/16 v7, -0x3f

    :goto_324
    const/16 v12, -0x2f

    if-ge v7, v12, :cond_325

    const/16 v12, 0x192

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 413
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x2e8235cb

    if-ne v12, v13, :cond_324

    goto :goto_325

    :cond_324
    add-int/lit8 v7, v7, 0x1

    goto :goto_324

    :cond_325
    :goto_325
    const/16 v7, -0x39

    :goto_326
    const/16 v12, -0x34

    if-ge v7, v12, :cond_327

    const/16 v12, 0x193

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 414
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x524e16d6

    if-ne v12, v13, :cond_326

    goto :goto_327

    :cond_326
    add-int/lit8 v7, v7, 0x1

    goto :goto_326

    :cond_327
    :goto_327
    const/16 v7, 0x1f

    :goto_328
    const/16 v12, 0x2e

    if-ge v7, v12, :cond_329

    const/16 v12, 0x194

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 415
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x545e1ae0

    if-ne v12, v13, :cond_328

    goto :goto_329

    :cond_328
    add-int/lit8 v7, v7, 0x1

    goto :goto_328

    :cond_329
    :goto_329
    const/16 v7, 0x43

    :goto_32a
    const/16 v12, 0x4d

    if-ge v7, v12, :cond_32b

    const/16 v12, 0x195

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 416
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x6d4a4c96

    if-ne v12, v13, :cond_32a

    goto :goto_32b

    :cond_32a
    add-int/lit8 v7, v7, 0x1

    goto :goto_32a

    :cond_32b
    :goto_32b
    const/16 v7, -0x35

    :goto_32c
    const/16 v12, -0x31

    if-ge v7, v12, :cond_32d

    const/16 v12, 0x196

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 417
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x14ad49b3

    if-ne v12, v13, :cond_32c

    goto :goto_32d

    :cond_32c
    add-int/lit8 v7, v7, 0x1

    goto :goto_32c

    :cond_32d
    :goto_32d
    const/16 v7, -0x33

    :goto_32e
    const/16 v12, -0x26

    if-ge v7, v12, :cond_32f

    const/16 v12, 0x197

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 418
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x521adba

    if-ne v12, v13, :cond_32e

    goto :goto_32f

    :cond_32e
    add-int/lit8 v7, v7, 0x1

    goto :goto_32e

    :cond_32f
    :goto_32f
    const/16 v7, -0x61

    :goto_330
    const/16 v12, -0x4f

    if-ge v7, v12, :cond_331

    const/16 v12, 0x198

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 419
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x3a4a016d

    if-ne v12, v13, :cond_330

    goto :goto_331

    :cond_330
    add-int/lit8 v7, v7, 0x1

    goto :goto_330

    :cond_331
    :goto_331
    const/16 v7, 0x45

    :goto_332
    const/16 v12, 0x4e

    if-ge v7, v12, :cond_333

    const/16 v12, 0x199

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 420
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x6dc0d40a

    if-ne v12, v13, :cond_332

    goto :goto_333

    :cond_332
    add-int/lit8 v7, v7, 0x1

    goto :goto_332

    :cond_333
    :goto_333
    const/16 v7, -0x57

    :goto_334
    const/16 v12, -0x45

    if-ge v7, v12, :cond_335

    const/16 v12, 0x19a

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 421
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x402134f0

    if-ne v12, v13, :cond_334

    goto :goto_335

    :cond_334
    add-int/lit8 v7, v7, 0x1

    goto :goto_334

    :cond_335
    :goto_335
    const/16 v7, -0x6b

    :goto_336
    const/16 v12, -0x62

    if-ge v7, v12, :cond_337

    const/16 v12, 0x19b

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 422
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x1d7614d6

    if-ne v12, v13, :cond_336

    goto :goto_337

    :cond_336
    add-int/lit8 v7, v7, 0x1

    goto :goto_336

    :cond_337
    :goto_337
    const/16 v7, -0x17

    :goto_338
    const/4 v12, -0x2

    if-ge v7, v12, :cond_339

    const/16 v12, 0x19c

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 423
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x5149909d

    if-ne v12, v13, :cond_338

    goto :goto_339

    :cond_338
    add-int/lit8 v7, v7, 0x1

    goto :goto_338

    :cond_339
    :goto_339
    const/16 v7, 0x54

    :goto_33a
    const/16 v12, 0x67

    if-ge v7, v12, :cond_33b

    const/16 v12, 0x19d

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 424
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x48deedac    # 456557.38f

    if-ne v12, v13, :cond_33a

    goto :goto_33b

    :cond_33a
    add-int/lit8 v7, v7, 0x1

    goto :goto_33a

    :cond_33b
    :goto_33b
    const/16 v7, -0x4a

    :goto_33c
    if-ge v7, v11, :cond_33d

    const/16 v12, 0x19e

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 425
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x2560578e

    if-ne v12, v13, :cond_33c

    goto :goto_33d

    :cond_33c
    add-int/lit8 v7, v7, 0x1

    goto :goto_33c

    :cond_33d
    :goto_33d
    const/16 v7, 0x6a

    :goto_33e
    if-ge v7, v2, :cond_33f

    const/16 v12, 0x19f

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 426
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x1e367325

    if-ne v12, v13, :cond_33e

    goto :goto_33f

    :cond_33e
    add-int/lit8 v7, v7, 0x1

    goto :goto_33e

    :cond_33f
    :goto_33f
    const/16 v7, -0x4f

    :goto_340
    const/16 v12, -0x3a

    if-ge v7, v12, :cond_341

    const/16 v12, 0x1a0

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 427
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0xcdd0cce

    if-ne v12, v13, :cond_340

    goto :goto_341

    :cond_340
    add-int/lit8 v7, v7, 0x1

    goto :goto_340

    :cond_341
    :goto_341
    const/16 v7, -0x59

    :goto_342
    const/16 v12, -0x47

    if-ge v7, v12, :cond_343

    const/16 v12, 0x1a1

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 428
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x4ba84438    # 2.2055024E7f

    if-ne v12, v13, :cond_342

    goto :goto_343

    :cond_342
    add-int/lit8 v7, v7, 0x1

    goto :goto_342

    :cond_343
    :goto_343
    const/16 v7, 0x46

    :goto_344
    const/16 v12, 0x55

    if-ge v7, v12, :cond_345

    const/16 v12, 0x1a2

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 429
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2a2bd1b4

    if-ne v12, v13, :cond_344

    goto :goto_345

    :cond_344
    add-int/lit8 v7, v7, 0x1

    goto :goto_344

    :cond_345
    :goto_345
    const/16 v7, 0x44

    :goto_346
    const/16 v12, 0x51

    if-ge v7, v12, :cond_347

    const/16 v12, 0x1a3

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 430
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x2cfc558c

    if-ne v12, v13, :cond_346

    goto :goto_347

    :cond_346
    add-int/lit8 v7, v7, 0x1

    goto :goto_346

    :cond_347
    :goto_347
    const/16 v7, 0x20

    :goto_348
    const/16 v12, 0x33

    if-ge v7, v12, :cond_349

    const/16 v12, 0x1a4

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 431
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x5a4c1be5

    if-ne v12, v13, :cond_348

    goto :goto_349

    :cond_348
    add-int/lit8 v7, v7, 0x1

    goto :goto_348

    :cond_349
    :goto_349
    const/16 v7, -0x3a

    :goto_34a
    if-ge v7, v6, :cond_34b

    const/16 v12, 0x1a5

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 432
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x74e59e59

    if-ne v12, v13, :cond_34a

    goto :goto_34b

    :cond_34a
    add-int/lit8 v7, v7, 0x1

    goto :goto_34a

    :cond_34b
    :goto_34b
    const/16 v7, -0x30

    :goto_34c
    const/16 v12, -0x19

    if-ge v7, v12, :cond_34d

    const/16 v12, 0x1a6

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 433
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x57251286

    if-ne v12, v13, :cond_34c

    goto :goto_34d

    :cond_34c
    add-int/lit8 v7, v7, 0x1

    goto :goto_34c

    :cond_34d
    :goto_34d
    const/16 v7, 0x36

    :goto_34e
    const/16 v12, 0x46

    if-ge v7, v12, :cond_34f

    const/16 v12, 0x1a7

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 434
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x6deedaa9    # -4.5799957E-28f

    if-ne v12, v13, :cond_34e

    goto :goto_34f

    :cond_34e
    add-int/lit8 v7, v7, 0x1

    goto :goto_34e

    :cond_34f
    :goto_34f
    const/16 v7, 0x2e

    :goto_350
    const/16 v12, 0x34

    if-ge v7, v12, :cond_351

    const/16 v12, 0x1a8

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 435
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x6b5bf5a

    if-ne v12, v13, :cond_350

    goto :goto_351

    :cond_350
    add-int/lit8 v7, v7, 0x1

    goto :goto_350

    :cond_351
    :goto_351
    const/16 v7, -0x72

    :goto_352
    const/16 v12, -0x67

    if-ge v7, v12, :cond_353

    const/16 v12, 0x1a9

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 436
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x7f0767ba

    if-ne v12, v13, :cond_352

    goto :goto_353

    :cond_352
    add-int/lit8 v7, v7, 0x1

    goto :goto_352

    :cond_353
    :goto_353
    const/16 v7, -0x41

    :goto_354
    const/16 v12, -0x2d

    if-ge v7, v12, :cond_355

    const/16 v12, 0x1aa

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 437
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x17ee43b8

    if-ne v12, v13, :cond_354

    goto :goto_355

    :cond_354
    add-int/lit8 v7, v7, 0x1

    goto :goto_354

    :cond_355
    :goto_355
    const/16 v7, 0x4c

    :goto_356
    const/16 v12, 0x59

    if-ge v7, v12, :cond_357

    const/16 v12, 0x1ab

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 438
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2f38c011

    if-ne v12, v13, :cond_356

    goto :goto_357

    :cond_356
    add-int/lit8 v7, v7, 0x1

    goto :goto_356

    :cond_357
    :goto_357
    const/16 v7, 0x6c

    :goto_358
    const/16 v12, 0x6e

    if-ge v7, v12, :cond_359

    const/16 v12, 0x1ac

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 439
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0xab186af

    if-ne v12, v13, :cond_358

    goto :goto_359

    :cond_358
    add-int/lit8 v7, v7, 0x1

    goto :goto_358

    :cond_359
    :goto_359
    const/16 v7, -0xa

    :goto_35a
    if-ge v7, v3, :cond_35b

    const/16 v12, 0x1ad

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 440
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2c6ab5a8

    if-ne v12, v13, :cond_35a

    goto :goto_35b

    :cond_35a
    add-int/lit8 v7, v7, 0x1

    goto :goto_35a

    :cond_35b
    :goto_35b
    const/16 v7, -0x52

    :goto_35c
    const/16 v12, -0x3f

    if-ge v7, v12, :cond_35d

    const/16 v12, 0x1ae

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 441
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x292669a6

    if-ne v12, v13, :cond_35c

    goto :goto_35d

    :cond_35c
    add-int/lit8 v7, v7, 0x1

    goto :goto_35c

    :cond_35d
    :goto_35d
    const/16 v7, 0x2c

    :goto_35e
    if-ge v7, v8, :cond_35f

    const/16 v12, 0x1af

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 442
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x1b8d195

    if-ne v12, v13, :cond_35e

    goto :goto_35f

    :cond_35e
    add-int/lit8 v7, v7, 0x1

    goto :goto_35e

    :cond_35f
    :goto_35f
    const/16 v7, 0x4e

    :goto_360
    const/16 v12, 0x50

    if-ge v7, v12, :cond_361

    const/16 v12, 0x1b0

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 443
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x43d93720

    if-ne v12, v13, :cond_360

    goto :goto_361

    :cond_360
    add-int/lit8 v7, v7, 0x1

    goto :goto_360

    :cond_361
    :goto_361
    const/16 v7, -0x72

    :goto_362
    if-ge v7, v1, :cond_363

    const/16 v12, 0x1b1

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 444
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x76ac338f

    if-ne v12, v13, :cond_362

    goto :goto_363

    :cond_362
    add-int/lit8 v7, v7, 0x1

    goto :goto_362

    :cond_363
    :goto_363
    const/16 v7, 0x6a

    :goto_364
    const/16 v12, 0x78

    if-ge v7, v12, :cond_365

    const/16 v12, 0x1b2

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 445
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x116ebec0

    if-ne v12, v13, :cond_364

    goto :goto_365

    :cond_364
    add-int/lit8 v7, v7, 0x1

    goto :goto_364

    :cond_365
    :goto_365
    const/16 v7, -0x75

    :goto_366
    const/16 v12, -0x57

    if-ge v7, v12, :cond_367

    const/16 v12, 0x1b3

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 446
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x7eb5a1

    if-ne v12, v13, :cond_366

    goto :goto_367

    :cond_366
    add-int/lit8 v7, v7, 0x1

    goto :goto_366

    :cond_367
    :goto_367
    const/16 v7, -0x9

    :goto_368
    const/16 v12, 0x12

    if-ge v7, v12, :cond_369

    const/16 v12, 0x1b4

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 447
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x37a35464

    if-ne v12, v13, :cond_368

    goto :goto_369

    :cond_368
    add-int/lit8 v7, v7, 0x1

    goto :goto_368

    :cond_369
    :goto_369
    const/16 v7, -0x13

    :goto_36a
    const/16 v12, -0x9

    if-ge v7, v12, :cond_36b

    const/16 v12, 0x1b5

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 448
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x3421d5eb    # -2.911953E7f

    if-ne v12, v13, :cond_36a

    goto :goto_36b

    :cond_36a
    add-int/lit8 v7, v7, 0x1

    goto :goto_36a

    :cond_36b
    :goto_36b
    const/16 v7, 0x4f

    :goto_36c
    const/16 v12, 0x69

    if-ge v7, v12, :cond_36d

    const/16 v12, 0x1b6

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 449
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x21ec88b5

    if-ne v12, v13, :cond_36c

    goto :goto_36d

    :cond_36c
    add-int/lit8 v7, v7, 0x1

    goto :goto_36c

    :cond_36d
    :goto_36d
    const/16 v7, 0x2f

    :goto_36e
    const/16 v12, 0x3c

    if-ge v7, v12, :cond_36f

    const/16 v12, 0x1b7

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 450
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x7078a968

    if-ne v12, v13, :cond_36e

    goto :goto_36f

    :cond_36e
    add-int/lit8 v7, v7, 0x1

    goto :goto_36e

    :cond_36f
    :goto_36f
    const/16 v7, 0x55

    :goto_370
    const/16 v12, 0x6d

    if-ge v7, v12, :cond_371

    const/16 v12, 0x1b8

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 451
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x578a730a

    if-ne v12, v13, :cond_370

    goto :goto_371

    :cond_370
    add-int/lit8 v7, v7, 0x1

    goto :goto_370

    :cond_371
    :goto_371
    const/16 v7, 0x7e

    :goto_372
    if-ge v7, v2, :cond_373

    const/16 v12, 0x1b9

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 452
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x4fadd070

    if-ne v12, v13, :cond_372

    goto :goto_373

    :cond_372
    add-int/lit8 v7, v7, 0x1

    goto :goto_372

    :cond_373
    :goto_373
    const/16 v7, 0x63

    :goto_374
    const/16 v12, 0x75

    if-ge v7, v12, :cond_375

    const/16 v12, 0x1ba

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 453
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x513c32cc

    if-ne v12, v13, :cond_374

    goto :goto_375

    :cond_374
    add-int/lit8 v7, v7, 0x1

    goto :goto_374

    :cond_375
    :goto_375
    const/16 v7, -0x5d

    :goto_376
    const/16 v12, -0x56

    if-ge v7, v12, :cond_377

    const/16 v12, 0x1bb

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 454
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x406a9b80

    if-ne v12, v13, :cond_376

    goto :goto_377

    :cond_376
    add-int/lit8 v7, v7, 0x1

    goto :goto_376

    :cond_377
    :goto_377
    const/16 v7, -0x20

    :goto_378
    const/16 v12, -0xe

    if-ge v7, v12, :cond_379

    const/16 v12, 0x1bc

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 455
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x7f84efa4

    if-ne v12, v13, :cond_378

    goto :goto_379

    :cond_378
    add-int/lit8 v7, v7, 0x1

    goto :goto_378

    :cond_379
    :goto_379
    const/16 v7, -0x4e

    :goto_37a
    const/16 v12, -0x39

    if-ge v7, v12, :cond_37b

    const/16 v12, 0x1bd

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 456
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x60e18bf7

    if-ne v12, v13, :cond_37a

    goto :goto_37b

    :cond_37a
    add-int/lit8 v7, v7, 0x1

    goto :goto_37a

    :cond_37b
    :goto_37b
    const/16 v7, -0xd

    :goto_37c
    const/16 v12, 0xa

    if-ge v7, v12, :cond_37d

    const/16 v12, 0x1be

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 457
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x471f706f

    if-ne v12, v13, :cond_37c

    goto :goto_37d

    :cond_37c
    add-int/lit8 v7, v7, 0x1

    goto :goto_37c

    :cond_37d
    :goto_37d
    const/16 v7, 0x4b

    :goto_37e
    const/16 v12, 0x5e

    if-ge v7, v12, :cond_37f

    const/16 v12, 0x1bf

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 458
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x6a1c914e

    if-ne v12, v13, :cond_37e

    goto :goto_37f

    :cond_37e
    add-int/lit8 v7, v7, 0x1

    goto :goto_37e

    :cond_37f
    :goto_37f
    const/16 v7, -0x7f

    :goto_380
    const/16 v12, -0x66

    if-ge v7, v12, :cond_381

    const/16 v12, 0x1c0

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 459
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x45ae7c

    if-ne v12, v13, :cond_380

    goto :goto_381

    :cond_380
    add-int/lit8 v7, v7, 0x1

    goto :goto_380

    :cond_381
    :goto_381
    const/16 v7, -0x39

    :goto_382
    const/16 v12, -0x1b

    if-ge v7, v12, :cond_383

    const/16 v12, 0x1c1

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 460
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x7a1be039

    if-ne v12, v13, :cond_382

    goto :goto_383

    :cond_382
    add-int/lit8 v7, v7, 0x1

    goto :goto_382

    :cond_383
    :goto_383
    const/16 v7, -0x28

    :goto_384
    const/16 v12, -0x13

    if-ge v7, v12, :cond_385

    const/16 v12, 0x1c2

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 461
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x4d1b81c8    # 1.63060864E8f

    if-ne v12, v13, :cond_384

    goto :goto_385

    :cond_384
    add-int/lit8 v7, v7, 0x1

    goto :goto_384

    :cond_385
    :goto_385
    const/4 v7, -0x2

    :goto_386
    const/16 v12, 0xd

    if-ge v7, v12, :cond_387

    const/16 v12, 0x1c3

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 462
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x31e01992

    if-ne v12, v13, :cond_386

    goto :goto_387

    :cond_386
    add-int/lit8 v7, v7, 0x1

    goto :goto_386

    :cond_387
    :goto_387
    const/4 v7, -0x6

    :goto_388
    const/16 v12, 0xa

    if-ge v7, v12, :cond_389

    const/16 v12, 0x1c4

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 463
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x9a00dc

    if-ne v12, v13, :cond_388

    goto :goto_389

    :cond_388
    add-int/lit8 v7, v7, 0x1

    goto :goto_388

    :cond_389
    :goto_389
    const/16 v7, -0x6e

    :goto_38a
    const/16 v12, -0x6b

    if-ge v7, v12, :cond_38b

    const/16 v12, 0x1c5

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 464
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x343b7f7c    # -2.5755912E7f

    if-ne v12, v13, :cond_38a

    goto :goto_38b

    :cond_38a
    add-int/lit8 v7, v7, 0x1

    goto :goto_38a

    :cond_38b
    :goto_38b
    const/16 v7, 0x1e

    :goto_38c
    const/16 v12, 0x24

    if-ge v7, v12, :cond_38d

    const/16 v12, 0x1c6

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 465
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x57dd4028

    if-ne v12, v13, :cond_38c

    goto :goto_38d

    :cond_38c
    add-int/lit8 v7, v7, 0x1

    goto :goto_38c

    :cond_38d
    :goto_38d
    const/16 v7, -0x1a

    :goto_38e
    const/4 v12, -0x4

    if-ge v7, v12, :cond_38f

    const/16 v12, 0x1c7

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 466
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x5d289297

    if-ne v12, v13, :cond_38e

    goto :goto_38f

    :cond_38e
    add-int/lit8 v7, v7, 0x1

    goto :goto_38e

    :cond_38f
    :goto_38f
    const/16 v7, 0x8

    :goto_390
    const/16 v12, 0x1e

    if-ge v7, v12, :cond_391

    const/16 v12, 0x1c8

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 467
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x77f8e6d6

    if-ne v12, v13, :cond_390

    goto :goto_391

    :cond_390
    add-int/lit8 v7, v7, 0x1

    goto :goto_390

    :cond_391
    :goto_391
    const/16 v7, 0x19

    :goto_392
    const/16 v12, 0x22

    if-ge v7, v12, :cond_393

    const/16 v12, 0x1c9

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 468
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x78eb8eb6

    if-ne v12, v13, :cond_392

    goto :goto_393

    :cond_392
    add-int/lit8 v7, v7, 0x1

    goto :goto_392

    :cond_393
    :goto_393
    const/4 v7, -0x1

    :goto_394
    const/16 v12, 0x17

    if-ge v7, v12, :cond_395

    const/16 v12, 0x1ca

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 469
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x5f18397c

    if-ne v12, v13, :cond_394

    goto :goto_395

    :cond_394
    add-int/lit8 v7, v7, 0x1

    goto :goto_394

    :cond_395
    :goto_395
    const/16 v7, -0xd

    :goto_396
    const/16 v12, -0x9

    if-ge v7, v12, :cond_397

    const/16 v12, 0x1cb

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 470
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x38687c95

    if-ne v12, v13, :cond_396

    goto :goto_397

    :cond_396
    add-int/lit8 v7, v7, 0x1

    goto :goto_396

    :cond_397
    :goto_397
    const/16 v7, 0x2f

    :goto_398
    const/16 v12, 0x4d

    if-ge v7, v12, :cond_399

    const/16 v12, 0x1cc

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 471
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x5c6d7aba

    if-ne v12, v13, :cond_398

    goto :goto_399

    :cond_398
    add-int/lit8 v7, v7, 0x1

    goto :goto_398

    :cond_399
    :goto_399
    const/16 v7, 0x2d

    :goto_39a
    const/16 v12, 0x39

    if-ge v7, v12, :cond_39b

    const/16 v12, 0x1cd

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 472
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x31630c5a

    if-ne v12, v13, :cond_39a

    goto :goto_39b

    :cond_39a
    add-int/lit8 v7, v7, 0x1

    goto :goto_39a

    :cond_39b
    :goto_39b
    const/16 v7, 0x34

    :goto_39c
    const/16 v12, 0x42

    if-ge v7, v12, :cond_39d

    const/16 v12, 0x1ce

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 473
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x27a21141

    if-ne v12, v13, :cond_39c

    goto :goto_39d

    :cond_39c
    add-int/lit8 v7, v7, 0x1

    goto :goto_39c

    :cond_39d
    :goto_39d
    const/16 v7, 0x56

    :goto_39e
    const/16 v12, 0x6c

    if-ge v7, v12, :cond_39f

    const/16 v13, 0x1cf

    int-to-byte v12, v7

    aput-byte v12, v0, v13

    .line 474
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x18dddf15

    if-ne v12, v13, :cond_39e

    goto :goto_39f

    :cond_39e
    add-int/lit8 v7, v7, 0x1

    goto :goto_39e

    :cond_39f
    :goto_39f
    const/16 v7, -0xa

    :goto_3a0
    const/4 v12, -0x8

    if-ge v7, v12, :cond_3a1

    const/16 v12, 0x1d0

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 475
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x28dca5ee

    if-ne v12, v13, :cond_3a0

    goto :goto_3a1

    :cond_3a0
    add-int/lit8 v7, v7, 0x1

    goto :goto_3a0

    :cond_3a1
    :goto_3a1
    const/16 v7, -0x17

    :goto_3a2
    const/4 v12, -0x2

    if-ge v7, v12, :cond_3a3

    const/16 v12, 0x1d1

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 476
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x7eb5d3c4

    if-ne v12, v13, :cond_3a2

    goto :goto_3a3

    :cond_3a2
    add-int/lit8 v7, v7, 0x1

    goto :goto_3a2

    :cond_3a3
    :goto_3a3
    const/16 v7, -0x15

    :goto_3a4
    const/16 v12, -0xa

    if-ge v7, v12, :cond_3a5

    const/16 v12, 0x1d2

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 477
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x6f76a03b

    if-ne v12, v13, :cond_3a4

    goto :goto_3a5

    :cond_3a4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3a4

    :cond_3a5
    :goto_3a5
    const/16 v7, -0x6a

    :goto_3a6
    if-ge v7, v1, :cond_3a7

    const/16 v12, 0x1d3

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 478
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x1c2f6262

    if-ne v12, v13, :cond_3a6

    goto :goto_3a7

    :cond_3a6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3a6

    :cond_3a7
    :goto_3a7
    const/16 v7, -0x39

    :goto_3a8
    const/16 v12, -0x1d

    if-ge v7, v12, :cond_3a9

    const/16 v12, 0x1d4

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 479
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x217de081

    if-ne v12, v13, :cond_3a8

    goto :goto_3a9

    :cond_3a8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3a8

    :cond_3a9
    :goto_3a9
    const/16 v7, -0x37

    :goto_3aa
    const/16 v12, -0x29

    if-ge v7, v12, :cond_3ab

    const/16 v12, 0x1d5

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 480
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x16889b81

    if-ne v12, v13, :cond_3aa

    goto :goto_3ab

    :cond_3aa
    add-int/lit8 v7, v7, 0x1

    goto :goto_3aa

    :cond_3ab
    :goto_3ab
    const/16 v7, -0x41

    :goto_3ac
    const/16 v12, -0x36

    if-ge v7, v12, :cond_3ad

    const/16 v12, 0x1d6

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 481
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x1d7e54bf

    if-ne v12, v13, :cond_3ac

    goto :goto_3ad

    :cond_3ac
    add-int/lit8 v7, v7, 0x1

    goto :goto_3ac

    :cond_3ad
    :goto_3ad
    const/16 v7, 0x38

    :goto_3ae
    const/16 v12, 0x41

    if-ge v7, v12, :cond_3af

    const/16 v12, 0x1d7

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 482
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x71b03433

    if-ne v12, v13, :cond_3ae

    goto :goto_3af

    :cond_3ae
    add-int/lit8 v7, v7, 0x1

    goto :goto_3ae

    :cond_3af
    :goto_3af
    const/16 v7, 0x14

    :goto_3b0
    const/16 v12, 0x28

    if-ge v7, v12, :cond_3b1

    const/16 v12, 0x1d8

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 483
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x25522d6b

    if-ne v12, v13, :cond_3b0

    goto :goto_3b1

    :cond_3b0
    add-int/lit8 v7, v7, 0x1

    goto :goto_3b0

    :cond_3b1
    :goto_3b1
    const/16 v7, -0x1b

    :goto_3b2
    const/16 v12, -0x10

    if-ge v7, v12, :cond_3b3

    const/16 v12, 0x1d9

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 484
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x579208a0

    if-ne v12, v13, :cond_3b2

    goto :goto_3b3

    :cond_3b2
    add-int/lit8 v7, v7, 0x1

    goto :goto_3b2

    :cond_3b3
    :goto_3b3
    const/4 v7, 0x6

    :goto_3b4
    const/16 v12, 0x1e

    if-ge v7, v12, :cond_3b5

    const/16 v12, 0x1da

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 485
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x16b76817

    if-ne v12, v13, :cond_3b4

    goto :goto_3b5

    :cond_3b4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3b4

    :cond_3b5
    :goto_3b5
    const/16 v7, -0x32

    :goto_3b6
    const/16 v12, -0x22

    if-ge v7, v12, :cond_3b7

    const/16 v12, 0x1db

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 486
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x43a79592

    if-ne v12, v13, :cond_3b6

    goto :goto_3b7

    :cond_3b6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3b6

    :cond_3b7
    :goto_3b7
    const/16 v7, 0x18

    :goto_3b8
    const/16 v12, 0x2a

    if-ge v7, v12, :cond_3b9

    const/16 v12, 0x1dc

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 487
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x475d888

    if-ne v12, v13, :cond_3b8

    goto :goto_3b9

    :cond_3b8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3b8

    :cond_3b9
    :goto_3b9
    const/16 v7, -0x20

    :goto_3ba
    const/16 v12, -0xa

    if-ge v7, v12, :cond_3bb

    const/16 v12, 0x1dd

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 488
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x6f2498fd

    if-ne v12, v13, :cond_3ba

    goto :goto_3bb

    :cond_3ba
    add-int/lit8 v7, v7, 0x1

    goto :goto_3ba

    :cond_3bb
    :goto_3bb
    const/16 v7, -0x57

    :goto_3bc
    const/16 v12, -0x4a

    if-ge v7, v12, :cond_3bd

    const/16 v12, 0x1de

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 489
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x5fb330d7

    if-ne v12, v13, :cond_3bc

    goto :goto_3bd

    :cond_3bc
    add-int/lit8 v7, v7, 0x1

    goto :goto_3bc

    :cond_3bd
    :goto_3bd
    const/16 v7, -0x54

    :goto_3be
    const/16 v12, -0x36

    if-ge v7, v12, :cond_3bf

    const/16 v12, 0x1df

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 490
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x707cc002

    if-ne v12, v13, :cond_3be

    goto :goto_3bf

    :cond_3be
    add-int/lit8 v7, v7, 0x1

    goto :goto_3be

    :cond_3bf
    :goto_3bf
    const/16 v7, 0xb

    :goto_3c0
    const/16 v12, 0x1e

    if-ge v7, v12, :cond_3c1

    const/16 v12, 0x1e0

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 491
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x2a8eb98a

    if-ne v12, v13, :cond_3c0

    goto :goto_3c1

    :cond_3c0
    add-int/lit8 v7, v7, 0x1

    goto :goto_3c0

    :cond_3c1
    :goto_3c1
    const/16 v7, 0x60

    :goto_3c2
    const/16 v12, 0x6e

    if-ge v7, v12, :cond_3c3

    const/16 v12, 0x1e1

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 492
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x130968ff

    if-ne v12, v13, :cond_3c2

    goto :goto_3c3

    :cond_3c2
    add-int/lit8 v7, v7, 0x1

    goto :goto_3c2

    :cond_3c3
    :goto_3c3
    const/16 v7, 0x64

    :goto_3c4
    const/16 v12, 0x7e

    if-ge v7, v12, :cond_3c5

    const/16 v12, 0x1e2

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 493
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x19c7cec1

    if-ne v12, v13, :cond_3c4

    goto :goto_3c5

    :cond_3c4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3c4

    :cond_3c5
    :goto_3c5
    const/16 v7, -0x57

    :goto_3c6
    const/16 v12, -0x48

    if-ge v7, v12, :cond_3c7

    const/16 v12, 0x1e3

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 494
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x6c62fb74

    if-ne v12, v13, :cond_3c6

    goto :goto_3c7

    :cond_3c6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3c6

    :cond_3c7
    :goto_3c7
    const/16 v7, -0x1b

    :goto_3c8
    const/4 v12, -0x7

    if-ge v7, v12, :cond_3c9

    const/16 v12, 0x1e4

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 495
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x346ef093

    if-ne v12, v13, :cond_3c8

    goto :goto_3c9

    :cond_3c8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3c8

    :cond_3c9
    :goto_3c9
    const/4 v7, 0x1

    :goto_3ca
    const/4 v12, 0x6

    if-ge v7, v12, :cond_3cb

    const/16 v12, 0x1e5

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 496
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x27ec7586

    if-ne v12, v13, :cond_3ca

    goto :goto_3cb

    :cond_3ca
    add-int/lit8 v7, v7, 0x1

    goto :goto_3ca

    :cond_3cb
    :goto_3cb
    const/16 v7, 0x33

    :goto_3cc
    const/16 v12, 0x4c

    if-ge v7, v12, :cond_3cd

    const/16 v12, 0x1e6

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 497
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x37e4ee69

    if-ne v12, v13, :cond_3cc

    goto :goto_3cd

    :cond_3cc
    add-int/lit8 v7, v7, 0x1

    goto :goto_3cc

    :cond_3cd
    :goto_3cd
    const/16 v7, -0x1b

    :goto_3ce
    const/16 v12, -0x14

    if-ge v7, v12, :cond_3cf

    const/16 v12, 0x1e7

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 498
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x4be2017d    # 2.9623034E7f

    if-ne v12, v13, :cond_3ce

    goto :goto_3cf

    :cond_3ce
    add-int/lit8 v7, v7, 0x1

    goto :goto_3ce

    :cond_3cf
    :goto_3cf
    const/16 v7, -0x6e

    :goto_3d0
    const/16 v12, -0x62

    if-ge v7, v12, :cond_3d1

    const/16 v12, 0x1e8

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 499
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x57ef792a

    if-ne v12, v13, :cond_3d0

    goto :goto_3d1

    :cond_3d0
    add-int/lit8 v7, v7, 0x1

    goto :goto_3d0

    :cond_3d1
    :goto_3d1
    const/16 v7, -0x47

    :goto_3d2
    const/16 v12, -0x37

    if-ge v7, v12, :cond_3d3

    const/16 v12, 0x1e9

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 500
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x647c15c9

    if-ne v12, v13, :cond_3d2

    goto :goto_3d3

    :cond_3d2
    add-int/lit8 v7, v7, 0x1

    goto :goto_3d2

    :cond_3d3
    :goto_3d3
    const/16 v7, -0xb

    :goto_3d4
    const/16 v12, 0x11

    if-ge v7, v12, :cond_3d5

    const/16 v12, 0x1ea

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 501
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x45315373

    if-ne v12, v13, :cond_3d4

    goto :goto_3d5

    :cond_3d4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3d4

    :cond_3d5
    :goto_3d5
    const/16 v7, -0xb

    :goto_3d6
    const/16 v12, 0xb

    if-ge v7, v12, :cond_3d7

    const/16 v12, 0x1eb

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 502
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x45315373

    if-ne v12, v13, :cond_3d6

    goto :goto_3d7

    :cond_3d6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3d6

    :cond_3d7
    :goto_3d7
    const/16 v7, -0x7b

    :goto_3d8
    const/16 v12, -0x67

    if-ge v7, v12, :cond_3d9

    const/16 v12, 0x1ec

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 503
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x121abacd

    if-ne v12, v13, :cond_3d8

    goto :goto_3d9

    :cond_3d8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3d8

    :cond_3d9
    :goto_3d9
    const/4 v7, 0x2

    :goto_3da
    const/16 v12, 0x9

    if-ge v7, v12, :cond_3db

    const/16 v12, 0x1ed

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 504
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x20942c08

    if-ne v12, v13, :cond_3da

    goto :goto_3db

    :cond_3da
    add-int/lit8 v7, v7, 0x1

    goto :goto_3da

    :cond_3db
    :goto_3db
    const/16 v7, -0x3b

    :goto_3dc
    const/16 v12, -0x2a

    if-ge v7, v12, :cond_3dd

    const/16 v12, 0x1ee

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 505
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x3f5d2a4b

    if-ne v12, v13, :cond_3dc

    goto :goto_3dd

    :cond_3dc
    add-int/lit8 v7, v7, 0x1

    goto :goto_3dc

    :cond_3dd
    :goto_3dd
    const/16 v7, -0x7a

    :goto_3de
    const/16 v12, -0x63

    if-ge v7, v12, :cond_3df

    const/16 v12, 0x1ef

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 506
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x9c8a67a

    if-ne v12, v13, :cond_3de

    goto :goto_3df

    :cond_3de
    add-int/lit8 v7, v7, 0x1

    goto :goto_3de

    :cond_3df
    :goto_3df
    const/16 v7, 0x4c

    :goto_3e0
    const/16 v12, 0x5f

    if-ge v7, v12, :cond_3e1

    const/16 v12, 0x1f0

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 507
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x7b020a61

    if-ne v12, v13, :cond_3e0

    goto :goto_3e1

    :cond_3e0
    add-int/lit8 v7, v7, 0x1

    goto :goto_3e0

    :cond_3e1
    :goto_3e1
    const/16 v7, -0x16

    :goto_3e2
    if-gez v7, :cond_3e3

    const/16 v12, 0x1f1

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 508
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x308970f5    # 1.0000166E-9f

    if-ne v12, v13, :cond_3e2

    goto :goto_3e3

    :cond_3e2
    add-int/lit8 v7, v7, 0x1

    goto :goto_3e2

    :cond_3e3
    :goto_3e3
    const/4 v7, -0x2

    :goto_3e4
    const/16 v12, 0xf

    if-ge v7, v12, :cond_3e5

    const/16 v12, 0x1f2

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 509
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x3b5852e9

    if-ne v12, v13, :cond_3e4

    goto :goto_3e5

    :cond_3e4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3e4

    :cond_3e5
    :goto_3e5
    const/16 v7, 0xb

    :goto_3e6
    const/16 v12, 0x21

    if-ge v7, v12, :cond_3e7

    const/16 v12, 0x1f3

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 510
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x46a73031

    if-ne v12, v13, :cond_3e6

    goto :goto_3e7

    :cond_3e6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3e6

    :cond_3e7
    :goto_3e7
    const/16 v7, 0x21

    :goto_3e8
    const/16 v12, 0x2f

    if-ge v7, v12, :cond_3e9

    const/16 v12, 0x1f4

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 511
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x3187ef7e

    if-ne v12, v13, :cond_3e8

    goto :goto_3e9

    :cond_3e8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3e8

    :cond_3e9
    :goto_3e9
    const/16 v7, -0x72

    :goto_3ea
    const/16 v12, -0x62

    if-ge v7, v12, :cond_3eb

    const/16 v12, 0x1f5

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 512
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x37ba8b2e

    if-ne v12, v13, :cond_3ea

    goto :goto_3eb

    :cond_3ea
    add-int/lit8 v7, v7, 0x1

    goto :goto_3ea

    :cond_3eb
    :goto_3eb
    const/16 v7, 0x71

    :goto_3ec
    const/16 v12, 0x7d

    if-ge v7, v12, :cond_3ed

    const/16 v12, 0x1f6

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 513
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x7e9a93d5

    if-ne v12, v13, :cond_3ec

    goto :goto_3ed

    :cond_3ec
    add-int/lit8 v7, v7, 0x1

    goto :goto_3ec

    :cond_3ed
    :goto_3ed
    const/16 v7, 0x79

    :goto_3ee
    if-ge v7, v2, :cond_3ef

    const/16 v12, 0x1f7

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 514
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x7c4db043

    if-ne v12, v13, :cond_3ee

    goto :goto_3ef

    :cond_3ee
    add-int/lit8 v7, v7, 0x1

    goto :goto_3ee

    :cond_3ef
    :goto_3ef
    const/16 v7, -0x22

    :goto_3f0
    const/16 v12, -0x18

    if-ge v7, v12, :cond_3f1

    const/16 v12, 0x1f8

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 515
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x29355c55

    if-ne v12, v13, :cond_3f0

    goto :goto_3f1

    :cond_3f0
    add-int/lit8 v7, v7, 0x1

    goto :goto_3f0

    :cond_3f1
    :goto_3f1
    const/16 v7, -0x1e

    :goto_3f2
    const/16 v12, -0x9

    if-ge v7, v12, :cond_3f3

    const/16 v12, 0x1f9

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 516
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x43cc5496

    if-ne v12, v13, :cond_3f2

    goto :goto_3f3

    :cond_3f2
    add-int/lit8 v7, v7, 0x1

    goto :goto_3f2

    :cond_3f3
    :goto_3f3
    const/16 v7, 0x57

    :goto_3f4
    const/16 v12, 0x6d

    if-ge v7, v12, :cond_3f5

    const/16 v12, 0x1fa

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 517
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0xa6d001e

    if-ne v12, v13, :cond_3f4

    goto :goto_3f5

    :cond_3f4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3f4

    :cond_3f5
    :goto_3f5
    const/16 v7, 0x3e

    :goto_3f6
    const/16 v12, 0x48

    if-ge v7, v12, :cond_3f7

    const/16 v12, 0x1fb

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 518
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0xd5f3eb3

    if-ne v12, v13, :cond_3f6

    goto :goto_3f7

    :cond_3f6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3f6

    :cond_3f7
    :goto_3f7
    const/16 v7, 0x2d

    :goto_3f8
    if-ge v7, v15, :cond_3f9

    const/16 v12, 0x1fc

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 519
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x39958e83

    if-ne v12, v13, :cond_3f8

    goto :goto_3f9

    :cond_3f8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3f8

    :cond_3f9
    :goto_3f9
    const/16 v7, 0x5c

    :goto_3fa
    const/16 v12, 0x72

    if-ge v7, v12, :cond_3fb

    const/16 v12, 0x1fd

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 520
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x597538f5

    if-ne v12, v13, :cond_3fa

    goto :goto_3fb

    :cond_3fa
    add-int/lit8 v7, v7, 0x1

    goto :goto_3fa

    :cond_3fb
    :goto_3fb
    const/16 v7, -0x25

    :goto_3fc
    const/16 v12, -0x19

    if-ge v7, v12, :cond_3fd

    const/16 v12, 0x1fe

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 521
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x286767f1

    if-ne v12, v13, :cond_3fc

    goto :goto_3fd

    :cond_3fc
    add-int/lit8 v7, v7, 0x1

    goto :goto_3fc

    :cond_3fd
    :goto_3fd
    const/16 v7, 0x6f

    :goto_3fe
    const/16 v12, 0x78

    if-ge v7, v12, :cond_3ff

    const/16 v12, 0x1ff

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 522
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x5fd97940

    if-ne v12, v13, :cond_3fe

    goto :goto_3ff

    :cond_3fe
    add-int/lit8 v7, v7, 0x1

    goto :goto_3fe

    :cond_3ff
    :goto_3ff
    const/16 v7, 0x47

    :goto_400
    const/16 v12, 0x59

    if-ge v7, v12, :cond_401

    const/16 v12, 0x200

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 523
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2efde020

    if-ne v12, v13, :cond_400

    goto :goto_401

    :cond_400
    add-int/lit8 v7, v7, 0x1

    goto :goto_400

    :cond_401
    :goto_401
    const/16 v7, 0x6c

    :goto_402
    const/16 v12, 0x78

    if-ge v7, v12, :cond_403

    const/16 v12, 0x201

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 524
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x23721118

    if-ne v12, v13, :cond_402

    goto :goto_403

    :cond_402
    add-int/lit8 v7, v7, 0x1

    goto :goto_402

    :cond_403
    :goto_403
    const/16 v7, 0x2b

    :goto_404
    const/16 v12, 0x47

    if-ge v7, v12, :cond_405

    const/16 v12, 0x202

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 525
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2afe0870

    if-ne v12, v13, :cond_404

    goto :goto_405

    :cond_404
    add-int/lit8 v7, v7, 0x1

    goto :goto_404

    :cond_405
    :goto_405
    const/16 v7, 0x1f

    :goto_406
    const/16 v12, 0x2e

    if-ge v7, v12, :cond_407

    const/16 v12, 0x203

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 526
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x1c75d1c5

    if-ne v12, v13, :cond_406

    goto :goto_407

    :cond_406
    add-int/lit8 v7, v7, 0x1

    goto :goto_406

    :cond_407
    :goto_407
    const/16 v7, -0x18

    :goto_408
    const/16 v12, -0x9

    if-ge v7, v12, :cond_409

    const/16 v12, 0x204

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 527
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x1f6bde4e

    if-ne v12, v13, :cond_408

    goto :goto_409

    :cond_408
    add-int/lit8 v7, v7, 0x1

    goto :goto_408

    :cond_409
    :goto_409
    const/16 v7, -0x25

    :goto_40a
    const/16 v12, -0x1b

    if-ge v7, v12, :cond_40b

    const/16 v12, 0x205

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 528
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x546a9353

    if-ne v12, v13, :cond_40a

    goto :goto_40b

    :cond_40a
    add-int/lit8 v7, v7, 0x1

    goto :goto_40a

    :cond_40b
    :goto_40b
    const/16 v7, -0xb

    :goto_40c
    const/16 v12, 0x9

    if-ge v7, v12, :cond_40d

    const/16 v12, 0x206

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 529
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x66b7c578

    if-ne v12, v13, :cond_40c

    goto :goto_40d

    :cond_40c
    add-int/lit8 v7, v7, 0x1

    goto :goto_40c

    :cond_40d
    :goto_40d
    const/16 v7, -0x75

    :goto_40e
    const/16 v12, -0x6d

    if-ge v7, v12, :cond_40f

    const/16 v12, 0x207

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 530
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x8dd7da0

    if-ne v12, v13, :cond_40e

    goto :goto_40f

    :cond_40e
    add-int/lit8 v7, v7, 0x1

    goto :goto_40e

    :cond_40f
    :goto_40f
    const/16 v7, -0x80

    :goto_410
    const/16 v12, -0x73

    if-ge v7, v12, :cond_411

    const/16 v12, 0x208

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 531
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x4f0f1cd6

    if-ne v12, v13, :cond_410

    goto :goto_411

    :cond_410
    add-int/lit8 v7, v7, 0x1

    goto :goto_410

    :cond_411
    :goto_411
    const/16 v7, 0x37

    :goto_412
    const/16 v12, 0x4a

    if-ge v7, v12, :cond_413

    const/16 v12, 0x209

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 532
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x7e0ca3bb

    if-ne v12, v13, :cond_412

    goto :goto_413

    :cond_412
    add-int/lit8 v7, v7, 0x1

    goto :goto_412

    :cond_413
    :goto_413
    const/16 v7, 0x6c

    :goto_414
    const/16 v12, 0x7d

    if-ge v7, v12, :cond_415

    const/16 v12, 0x20a

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 533
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0xa9980b2

    if-ne v12, v13, :cond_414

    goto :goto_415

    :cond_414
    add-int/lit8 v7, v7, 0x1

    goto :goto_414

    :cond_415
    :goto_415
    const/16 v7, 0x53

    :goto_416
    const/16 v12, 0x5e

    if-ge v7, v12, :cond_417

    const/16 v12, 0x20b

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 534
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3e5c2594

    if-ne v12, v13, :cond_416

    goto :goto_417

    :cond_416
    add-int/lit8 v7, v7, 0x1

    goto :goto_416

    :cond_417
    :goto_417
    const/16 v7, -0x76

    :goto_418
    const/16 v12, -0x65

    if-ge v7, v12, :cond_419

    const/16 v12, 0x20c

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 535
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x52be57bc

    if-ne v12, v13, :cond_418

    goto :goto_419

    :cond_418
    add-int/lit8 v7, v7, 0x1

    goto :goto_418

    :cond_419
    :goto_419
    const/16 v7, 0x2a

    :goto_41a
    if-ge v7, v14, :cond_41b

    const/16 v12, 0x20d

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 536
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x6e56587e

    if-ne v12, v13, :cond_41a

    goto :goto_41b

    :cond_41a
    add-int/lit8 v7, v7, 0x1

    goto :goto_41a

    :cond_41b
    :goto_41b
    const/16 v7, 0x38

    :goto_41c
    const/16 v12, 0x3f

    if-ge v7, v12, :cond_41d

    const/16 v12, 0x20e

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 537
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x3166c4db

    if-ne v12, v13, :cond_41c

    goto :goto_41d

    :cond_41c
    add-int/lit8 v7, v7, 0x1

    goto :goto_41c

    :cond_41d
    :goto_41d
    const/16 v7, -0x78

    :goto_41e
    if-ge v7, v1, :cond_41f

    const/16 v12, 0x20f

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 538
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x4f64a4d9

    if-ne v12, v13, :cond_41e

    goto :goto_41f

    :cond_41e
    add-int/lit8 v7, v7, 0x1

    goto :goto_41e

    :cond_41f
    :goto_41f
    const/16 v7, -0x19

    :goto_420
    if-ge v7, v3, :cond_421

    const/16 v12, 0x210

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 539
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x3049cb42

    if-ne v12, v13, :cond_420

    goto :goto_421

    :cond_420
    add-int/lit8 v7, v7, 0x1

    goto :goto_420

    :cond_421
    :goto_421
    const/16 v7, -0x80

    :goto_422
    const/16 v12, -0x6f

    if-ge v7, v12, :cond_423

    const/16 v12, 0x211

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 540
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x7ec66bdc

    if-ne v12, v13, :cond_422

    goto :goto_423

    :cond_422
    add-int/lit8 v7, v7, 0x1

    goto :goto_422

    :cond_423
    :goto_423
    const/16 v7, -0x38

    :goto_424
    const/16 v12, -0x1c

    if-ge v7, v12, :cond_425

    const/16 v12, 0x212

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 541
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x50d5c7c4

    if-ne v12, v13, :cond_424

    goto :goto_425

    :cond_424
    add-int/lit8 v7, v7, 0x1

    goto :goto_424

    :cond_425
    :goto_425
    const/16 v7, -0x41

    :goto_426
    const/16 v12, -0x32

    if-ge v7, v12, :cond_427

    const/16 v12, 0x213

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 542
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x587f6157

    if-ne v12, v13, :cond_426

    goto :goto_427

    :cond_426
    add-int/lit8 v7, v7, 0x1

    goto :goto_426

    :cond_427
    :goto_427
    const/16 v7, 0x20

    :goto_428
    const/16 v12, 0x34

    if-ge v7, v12, :cond_429

    const/16 v12, 0x214

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 543
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x2cee7deb

    if-ne v12, v13, :cond_428

    goto :goto_429

    :cond_428
    add-int/lit8 v7, v7, 0x1

    goto :goto_428

    :cond_429
    :goto_429
    const/16 v7, -0x80

    :goto_42a
    const/16 v12, -0x6d

    if-ge v7, v12, :cond_42b

    const/16 v12, 0x215

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 544
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2e042e0f

    if-ne v12, v13, :cond_42a

    goto :goto_42b

    :cond_42a
    add-int/lit8 v7, v7, 0x1

    goto :goto_42a

    :cond_42b
    :goto_42b
    const/16 v7, 0x63

    :goto_42c
    const/16 v12, 0x77

    if-ge v7, v12, :cond_42d

    const/16 v12, 0x216

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 545
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x51a735db

    if-ne v12, v13, :cond_42c

    goto :goto_42d

    :cond_42c
    add-int/lit8 v7, v7, 0x1

    goto :goto_42c

    :cond_42d
    :goto_42d
    const/16 v7, 0x3e

    :goto_42e
    const/16 v12, 0x52

    if-ge v7, v12, :cond_42f

    const/16 v12, 0x217

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 546
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x179b7d2f

    if-ne v12, v13, :cond_42e

    goto :goto_42f

    :cond_42e
    add-int/lit8 v7, v7, 0x1

    goto :goto_42e

    :cond_42f
    :goto_42f
    const/4 v7, 0x0

    :goto_430
    const/16 v12, 0x15

    if-ge v7, v12, :cond_431

    const/16 v12, 0x218

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 547
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x7cd94e62

    if-ne v12, v13, :cond_430

    goto :goto_431

    :cond_430
    add-int/lit8 v7, v7, 0x1

    goto :goto_430

    :cond_431
    :goto_431
    const/4 v7, -0x4

    :goto_432
    const/16 v12, 0x19

    if-ge v7, v12, :cond_433

    const/16 v12, 0x219

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 548
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x25523d5c

    if-ne v12, v13, :cond_432

    goto :goto_433

    :cond_432
    add-int/lit8 v7, v7, 0x1

    goto :goto_432

    :cond_433
    :goto_433
    const/16 v7, -0x64

    :goto_434
    const/16 v12, -0x56

    if-ge v7, v12, :cond_435

    const/16 v12, 0x21a

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 549
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x37a19864

    if-ne v12, v13, :cond_434

    goto :goto_435

    :cond_434
    add-int/lit8 v7, v7, 0x1

    goto :goto_434

    :cond_435
    :goto_435
    const/16 v7, 0x44

    :goto_436
    const/16 v12, 0x52

    if-ge v7, v12, :cond_437

    const/16 v12, 0x21b

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 550
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x5b7d8044

    if-ne v12, v13, :cond_436

    goto :goto_437

    :cond_436
    add-int/lit8 v7, v7, 0x1

    goto :goto_436

    :cond_437
    :goto_437
    const/16 v7, -0x1d

    :goto_438
    const/16 v12, -0x12

    if-ge v7, v12, :cond_439

    const/16 v12, 0x21c

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 551
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x637f8f63

    if-ne v12, v13, :cond_438

    goto :goto_439

    :cond_438
    add-int/lit8 v7, v7, 0x1

    goto :goto_438

    :cond_439
    :goto_439
    const/16 v7, 0x32

    :goto_43a
    const/16 v12, 0x43

    if-ge v7, v12, :cond_43b

    const/16 v12, 0x21d

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 552
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x8dc6f55

    if-ne v12, v13, :cond_43a

    goto :goto_43b

    :cond_43a
    add-int/lit8 v7, v7, 0x1

    goto :goto_43a

    :cond_43b
    :goto_43b
    const/16 v7, -0x62

    :goto_43c
    const/16 v12, -0x52

    if-ge v7, v12, :cond_43d

    const/16 v12, 0x21e

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 553
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x554b5d82

    if-ne v12, v13, :cond_43c

    goto :goto_43d

    :cond_43c
    add-int/lit8 v7, v7, 0x1

    goto :goto_43c

    :cond_43d
    :goto_43d
    const/16 v7, -0x13

    :goto_43e
    const/16 v12, 0xb

    if-ge v7, v12, :cond_43f

    const/16 v12, 0x21f

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 554
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x6a2b514d

    if-ne v12, v13, :cond_43e

    goto :goto_43f

    :cond_43e
    add-int/lit8 v7, v7, 0x1

    goto :goto_43e

    :cond_43f
    :goto_43f
    const/16 v7, 0x52

    :goto_440
    const/16 v12, 0x68

    if-ge v7, v12, :cond_441

    const/16 v12, 0x220

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 555
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x3ee4eea5

    if-ne v12, v13, :cond_440

    goto :goto_441

    :cond_440
    add-int/lit8 v7, v7, 0x1

    goto :goto_440

    :cond_441
    :goto_441
    const/16 v7, -0x7a

    :goto_442
    const/16 v12, -0x73

    if-ge v7, v12, :cond_443

    const/16 v12, 0x221

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 556
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x2454a6e0

    if-ne v12, v13, :cond_442

    goto :goto_443

    :cond_442
    add-int/lit8 v7, v7, 0x1

    goto :goto_442

    :cond_443
    :goto_443
    const/4 v7, -0x5

    :goto_444
    if-ge v7, v5, :cond_445

    const/16 v12, 0x222

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 557
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x1e35cec5

    if-ne v12, v13, :cond_444

    goto :goto_445

    :cond_444
    add-int/lit8 v7, v7, 0x1

    goto :goto_444

    :cond_445
    :goto_445
    const/16 v7, 0x35

    :goto_446
    const/16 v12, 0x4b

    if-ge v7, v12, :cond_447

    const/16 v12, 0x223

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 558
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0xe37ec70

    if-ne v12, v13, :cond_446

    goto :goto_447

    :cond_446
    add-int/lit8 v7, v7, 0x1

    goto :goto_446

    :cond_447
    :goto_447
    const/16 v7, -0xd

    :goto_448
    const/4 v12, 0x2

    if-ge v7, v12, :cond_449

    const/16 v12, 0x224

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 559
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x19a5902d

    if-ne v12, v13, :cond_448

    goto :goto_449

    :cond_448
    add-int/lit8 v7, v7, 0x1

    goto :goto_448

    :cond_449
    :goto_449
    const/16 v7, -0x49

    :goto_44a
    const/16 v12, -0x34

    if-ge v7, v12, :cond_44b

    const/16 v12, 0x225

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 560
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x34fc81e

    if-ne v12, v13, :cond_44a

    goto :goto_44b

    :cond_44a
    add-int/lit8 v7, v7, 0x1

    goto :goto_44a

    :cond_44b
    :goto_44b
    const/16 v7, -0x3e

    :goto_44c
    const/16 v12, -0x26

    if-ge v7, v12, :cond_44d

    const/16 v12, 0x226

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 561
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x6d78ce56

    if-ne v12, v13, :cond_44c

    goto :goto_44d

    :cond_44c
    add-int/lit8 v7, v7, 0x1

    goto :goto_44c

    :cond_44d
    :goto_44d
    const/16 v7, -0x39

    :goto_44e
    if-ge v7, v10, :cond_44f

    const/16 v12, 0x227

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 562
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x559be072

    if-ne v12, v13, :cond_44e

    goto :goto_44f

    :cond_44e
    add-int/lit8 v7, v7, 0x1

    goto :goto_44e

    :cond_44f
    :goto_44f
    const/16 v7, -0x4d

    :goto_450
    const/16 v12, -0x40

    if-ge v7, v12, :cond_451

    const/16 v12, 0x228

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 563
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x30112f42

    if-ne v12, v13, :cond_450

    goto :goto_451

    :cond_450
    add-int/lit8 v7, v7, 0x1

    goto :goto_450

    :cond_451
    :goto_451
    const/16 v7, 0x9

    :goto_452
    const/16 v12, 0xf

    if-ge v7, v12, :cond_453

    const/16 v12, 0x229

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 564
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2103bfaf

    if-ne v12, v13, :cond_452

    goto :goto_453

    :cond_452
    add-int/lit8 v7, v7, 0x1

    goto :goto_452

    :cond_453
    :goto_453
    const/16 v7, -0xf

    :goto_454
    const/4 v12, -0x1

    if-ge v7, v12, :cond_455

    const/16 v12, 0x22a

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 565
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x6ba5f984

    if-ne v12, v13, :cond_454

    goto :goto_455

    :cond_454
    add-int/lit8 v7, v7, 0x1

    goto :goto_454

    :cond_455
    :goto_455
    const/16 v7, -0x68

    :goto_456
    const/16 v12, -0x56

    if-ge v7, v12, :cond_457

    const/16 v12, 0x22b

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 566
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x335954ed    # -8.7382168E7f

    if-ne v12, v13, :cond_456

    goto :goto_457

    :cond_456
    add-int/lit8 v7, v7, 0x1

    goto :goto_456

    :cond_457
    :goto_457
    const/16 v7, -0x69

    :goto_458
    const/16 v12, -0x5b

    if-ge v7, v12, :cond_459

    const/16 v12, 0x22c

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 567
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x4cdb8a37

    if-ne v12, v13, :cond_458

    goto :goto_459

    :cond_458
    add-int/lit8 v7, v7, 0x1

    goto :goto_458

    :cond_459
    :goto_459
    const/16 v7, 0x8

    :goto_45a
    const/16 v12, 0x14

    if-ge v7, v12, :cond_45b

    const/16 v12, 0x22d

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 568
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x73fa2a75

    if-ne v12, v13, :cond_45a

    goto :goto_45b

    :cond_45a
    add-int/lit8 v7, v7, 0x1

    goto :goto_45a

    :cond_45b
    :goto_45b
    const/16 v7, 0x66

    :goto_45c
    if-ge v7, v2, :cond_45d

    const/16 v12, 0x22e

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 569
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x66e595e1

    if-ne v12, v13, :cond_45c

    goto :goto_45d

    :cond_45c
    add-int/lit8 v7, v7, 0x1

    goto :goto_45c

    :cond_45d
    :goto_45d
    const/16 v7, 0x6a

    :goto_45e
    if-ge v7, v2, :cond_45f

    const/16 v12, 0x22f

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 570
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2f35ad6f

    if-ne v12, v13, :cond_45e

    goto :goto_45f

    :cond_45e
    add-int/lit8 v7, v7, 0x1

    goto :goto_45e

    :cond_45f
    :goto_45f
    const/16 v7, 0x67

    :goto_460
    const/16 v12, 0x6d

    if-ge v7, v12, :cond_461

    const/16 v12, 0x230

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 571
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x7edd0508

    if-ne v12, v13, :cond_460

    goto :goto_461

    :cond_460
    add-int/lit8 v7, v7, 0x1

    goto :goto_460

    :cond_461
    :goto_461
    const/16 v7, -0xe

    :goto_462
    const/4 v12, 0x5

    if-ge v7, v12, :cond_463

    const/16 v12, 0x231

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 572
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x7edd0508

    if-ne v12, v13, :cond_462

    goto :goto_463

    :cond_462
    add-int/lit8 v7, v7, 0x1

    goto :goto_462

    :cond_463
    :goto_463
    const/16 v7, 0x59

    :goto_464
    const/16 v12, 0x63

    if-ge v7, v12, :cond_465

    const/16 v12, 0x232

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 573
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x1f3dfd02

    if-ne v12, v13, :cond_464

    goto :goto_465

    :cond_464
    add-int/lit8 v7, v7, 0x1

    goto :goto_464

    :cond_465
    :goto_465
    const/16 v7, -0xb

    :goto_466
    const/16 v12, 0xc

    if-ge v7, v12, :cond_467

    const/16 v12, 0x233

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 574
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x1acd8110

    if-ne v12, v13, :cond_466

    goto :goto_467

    :cond_466
    add-int/lit8 v7, v7, 0x1

    goto :goto_466

    :cond_467
    :goto_467
    const/16 v7, 0x24

    :goto_468
    const/16 v12, 0x2f

    if-ge v7, v12, :cond_469

    const/16 v12, 0x234

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 575
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2c8885e0

    if-ne v12, v13, :cond_468

    goto :goto_469

    :cond_468
    add-int/lit8 v7, v7, 0x1

    goto :goto_468

    :cond_469
    :goto_469
    const/16 v7, 0x64

    :goto_46a
    const/16 v12, 0x76

    if-ge v7, v12, :cond_46b

    const/16 v12, 0x235

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 576
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x7411b19e

    if-ne v12, v13, :cond_46a

    goto :goto_46b

    :cond_46a
    add-int/lit8 v7, v7, 0x1

    goto :goto_46a

    :cond_46b
    :goto_46b
    const/4 v7, 0x0

    :goto_46c
    const/16 v12, 0x12

    if-ge v7, v12, :cond_46d

    const/16 v12, 0x236

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 577
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x5a751392

    if-ne v12, v13, :cond_46c

    goto :goto_46d

    :cond_46c
    add-int/lit8 v7, v7, 0x1

    goto :goto_46c

    :cond_46d
    :goto_46d
    const/16 v7, -0xe

    :goto_46e
    const/4 v12, -0x4

    if-ge v7, v12, :cond_46f

    const/16 v12, 0x237

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 578
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x7aaf38b0

    if-ne v12, v13, :cond_46e

    goto :goto_46f

    :cond_46e
    add-int/lit8 v7, v7, 0x1

    goto :goto_46e

    :cond_46f
    :goto_46f
    const/16 v7, -0x65

    :goto_470
    const/16 v12, -0x4f

    if-ge v7, v12, :cond_471

    const/16 v12, 0x238

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 579
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0xf80d4ab

    if-ne v12, v13, :cond_470

    goto :goto_471

    :cond_470
    add-int/lit8 v7, v7, 0x1

    goto :goto_470

    :cond_471
    :goto_471
    const/16 v7, 0x2e

    :goto_472
    const/16 v12, 0x46

    if-ge v7, v12, :cond_473

    const/16 v12, 0x239

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 580
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3bbc5021

    if-ne v12, v13, :cond_472

    goto :goto_473

    :cond_472
    add-int/lit8 v7, v7, 0x1

    goto :goto_472

    :cond_473
    :goto_473
    const/16 v7, -0x7c

    :goto_474
    const/16 v12, -0x6d

    if-ge v7, v12, :cond_475

    const/16 v12, 0x23a

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 581
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x21d35d7f

    if-ne v12, v13, :cond_474

    goto :goto_475

    :cond_474
    add-int/lit8 v7, v7, 0x1

    goto :goto_474

    :cond_475
    :goto_475
    const/16 v7, 0x62

    :goto_476
    const/16 v12, 0x6f

    if-ge v7, v12, :cond_477

    const/16 v12, 0x23b

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 582
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3518f6d5

    if-ne v12, v13, :cond_476

    goto :goto_477

    :cond_476
    add-int/lit8 v7, v7, 0x1

    goto :goto_476

    :cond_477
    :goto_477
    const/16 v7, -0x14

    :goto_478
    const/4 v12, -0x7

    if-ge v7, v12, :cond_479

    const/16 v12, 0x23c

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 583
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x319eff5c

    if-ne v12, v13, :cond_478

    goto :goto_479

    :cond_478
    add-int/lit8 v7, v7, 0x1

    goto :goto_478

    :cond_479
    :goto_479
    const/16 v7, 0x6c

    :goto_47a
    const/16 v12, 0x77

    if-ge v7, v12, :cond_47b

    const/16 v12, 0x23d

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 584
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0xfcb856a

    if-ne v12, v13, :cond_47a

    goto :goto_47b

    :cond_47a
    add-int/lit8 v7, v7, 0x1

    goto :goto_47a

    :cond_47b
    :goto_47b
    const/16 v7, 0x70

    :goto_47c
    const/16 v12, 0x7d

    if-ge v7, v12, :cond_47d

    const/16 v12, 0x23e

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 585
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2b2073d1

    if-ne v12, v13, :cond_47c

    goto :goto_47d

    :cond_47c
    add-int/lit8 v7, v7, 0x1

    goto :goto_47c

    :cond_47d
    :goto_47d
    const/16 v7, 0x2a

    :goto_47e
    if-ge v7, v14, :cond_47f

    const/16 v12, 0x23f

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 586
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x23a512c0

    if-ne v12, v13, :cond_47e

    goto :goto_47f

    :cond_47e
    add-int/lit8 v7, v7, 0x1

    goto :goto_47e

    :cond_47f
    :goto_47f
    const/16 v7, 0x18

    :goto_480
    const/16 v12, 0x30

    if-ge v7, v12, :cond_481

    const/16 v12, 0x240

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 587
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0xa01c1e5

    if-ne v12, v13, :cond_480

    goto :goto_481

    :cond_480
    add-int/lit8 v7, v7, 0x1

    goto :goto_480

    :cond_481
    :goto_481
    const/16 v7, -0x46

    :goto_482
    const/16 v12, -0x2f

    if-ge v7, v12, :cond_483

    const/16 v12, 0x241

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 588
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0xb1af12a

    if-ne v12, v13, :cond_482

    goto :goto_483

    :cond_482
    add-int/lit8 v7, v7, 0x1

    goto :goto_482

    :cond_483
    :goto_483
    const/16 v7, 0x6f

    :goto_484
    const/16 v12, 0x7a

    if-ge v7, v12, :cond_485

    const/16 v12, 0x242

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 589
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x3f21a10c

    if-ne v12, v13, :cond_484

    goto :goto_485

    :cond_484
    add-int/lit8 v7, v7, 0x1

    goto :goto_484

    :cond_485
    :goto_485
    const/16 v7, 0x6c

    :goto_486
    if-ge v7, v2, :cond_487

    const/16 v12, 0x243

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 590
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x13006a5f

    if-ne v12, v13, :cond_486

    goto :goto_487

    :cond_486
    add-int/lit8 v7, v7, 0x1

    goto :goto_486

    :cond_487
    :goto_487
    const/16 v7, -0x3c

    :goto_488
    if-ge v7, v10, :cond_489

    const/16 v12, 0x244

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 591
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x528b35a4

    if-ne v12, v13, :cond_488

    goto :goto_489

    :cond_488
    add-int/lit8 v7, v7, 0x1

    goto :goto_488

    :cond_489
    :goto_489
    const/16 v7, 0x40

    :goto_48a
    const/16 v12, 0x51

    if-ge v7, v12, :cond_48b

    const/16 v12, 0x245

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 592
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x619c8e0c

    if-ne v12, v13, :cond_48a

    goto :goto_48b

    :cond_48a
    add-int/lit8 v7, v7, 0x1

    goto :goto_48a

    :cond_48b
    :goto_48b
    const/4 v7, -0x6

    :goto_48c
    if-ge v7, v5, :cond_48d

    const/16 v12, 0x246

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 593
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x1628996d

    if-ne v12, v13, :cond_48c

    goto :goto_48d

    :cond_48c
    add-int/lit8 v7, v7, 0x1

    goto :goto_48c

    :cond_48d
    :goto_48d
    const/4 v7, -0x4

    :goto_48e
    const/16 v12, 0x11

    if-ge v7, v12, :cond_48f

    const/16 v12, 0x247

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 594
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x68420428

    if-ne v12, v13, :cond_48e

    goto :goto_48f

    :cond_48e
    add-int/lit8 v7, v7, 0x1

    goto :goto_48e

    :cond_48f
    :goto_48f
    const/16 v7, -0xe

    :goto_490
    const/16 v12, 0x8

    if-ge v7, v12, :cond_491

    const/16 v12, 0x248

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 595
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3d061900

    if-ne v12, v13, :cond_490

    goto :goto_491

    :cond_490
    add-int/lit8 v7, v7, 0x1

    goto :goto_490

    :cond_491
    :goto_491
    const/16 v7, -0x59

    :goto_492
    const/16 v12, -0x54

    if-ge v7, v12, :cond_493

    const/16 v12, 0x249

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 596
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x488a3c97

    if-ne v12, v13, :cond_492

    goto :goto_493

    :cond_492
    add-int/lit8 v7, v7, 0x1

    goto :goto_492

    :cond_493
    :goto_493
    const/16 v7, 0x60

    :goto_494
    const/16 v12, 0x65

    if-ge v7, v12, :cond_495

    const/16 v12, 0x24a

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 597
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x245dcea5

    if-ne v12, v13, :cond_494

    goto :goto_495

    :cond_494
    add-int/lit8 v7, v7, 0x1

    goto :goto_494

    :cond_495
    :goto_495
    const/16 v7, -0x11

    :goto_496
    const/16 v12, -0xe

    if-ge v7, v12, :cond_497

    const/16 v12, 0x24b

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 598
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x2df3254b

    if-ne v12, v13, :cond_496

    goto :goto_497

    :cond_496
    add-int/lit8 v7, v7, 0x1

    goto :goto_496

    :cond_497
    :goto_497
    const/16 v7, 0x17

    :goto_498
    const/16 v12, 0x21

    if-ge v7, v12, :cond_499

    const/16 v12, 0x24c

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 599
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x4018117

    if-ne v12, v13, :cond_498

    goto :goto_499

    :cond_498
    add-int/lit8 v7, v7, 0x1

    goto :goto_498

    :cond_499
    :goto_499
    const/16 v7, 0x12

    :goto_49a
    const/16 v12, 0x25

    if-ge v7, v12, :cond_49b

    const/16 v12, 0x24d

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 600
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x6ccb3ee6

    if-ne v12, v13, :cond_49a

    goto :goto_49b

    :cond_49a
    add-int/lit8 v7, v7, 0x1

    goto :goto_49a

    :cond_49b
    :goto_49b
    const/16 v7, 0x74

    :goto_49c
    const/16 v12, 0x7c

    if-ge v7, v12, :cond_49d

    const/16 v12, 0x24e

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 601
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x5a05f41f

    if-ne v12, v13, :cond_49c

    goto :goto_49d

    :cond_49c
    add-int/lit8 v7, v7, 0x1

    goto :goto_49c

    :cond_49d
    :goto_49d
    const/16 v7, 0x19

    :goto_49e
    const/16 v12, 0x2a

    if-ge v7, v12, :cond_49f

    const/16 v12, 0x24f

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 602
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x7c2fa8b2

    if-ne v12, v13, :cond_49e

    goto :goto_49f

    :cond_49e
    add-int/lit8 v7, v7, 0x1

    goto :goto_49e

    :cond_49f
    :goto_49f
    const/16 v7, 0x37

    :goto_4a0
    const/16 v12, 0x4c

    if-ge v7, v12, :cond_4a1

    const/16 v12, 0x250

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 603
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x31912506

    if-ne v12, v13, :cond_4a0

    goto :goto_4a1

    :cond_4a0
    add-int/lit8 v7, v7, 0x1

    goto :goto_4a0

    :cond_4a1
    :goto_4a1
    const/16 v7, -0x80

    :goto_4a2
    const/16 v12, -0x79

    if-ge v7, v12, :cond_4a3

    const/16 v12, 0x251

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 604
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0xb8e8692

    if-ne v12, v13, :cond_4a2

    goto :goto_4a3

    :cond_4a2
    add-int/lit8 v7, v7, 0x1

    goto :goto_4a2

    :cond_4a3
    :goto_4a3
    const/16 v7, 0x2d

    :goto_4a4
    const/16 v12, 0x42

    if-ge v7, v12, :cond_4a5

    const/16 v12, 0x252

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 605
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x5d8d5bd0

    if-ne v12, v13, :cond_4a4

    goto :goto_4a5

    :cond_4a4
    add-int/lit8 v7, v7, 0x1

    goto :goto_4a4

    :cond_4a5
    :goto_4a5
    const/16 v7, 0x6e

    :goto_4a6
    const/16 v12, 0x78

    if-ge v7, v12, :cond_4a7

    const/16 v12, 0x253

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 606
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x1aeb10d4

    if-ne v12, v13, :cond_4a6

    goto :goto_4a7

    :cond_4a6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4a6

    :cond_4a7
    :goto_4a7
    const/16 v7, -0x80

    :goto_4a8
    const/16 v12, -0x77

    if-ge v7, v12, :cond_4a9

    const/16 v12, 0x254

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 607
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x40355c0e

    if-ne v12, v13, :cond_4a8

    goto :goto_4a9

    :cond_4a8
    add-int/lit8 v7, v7, 0x1

    goto :goto_4a8

    :cond_4a9
    :goto_4a9
    const/16 v7, -0x34

    :goto_4aa
    const/16 v12, -0x24

    if-ge v7, v12, :cond_4ab

    const/16 v12, 0x255

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 608
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x31e7e4a1

    if-ne v12, v13, :cond_4aa

    goto :goto_4ab

    :cond_4aa
    add-int/lit8 v7, v7, 0x1

    goto :goto_4aa

    :cond_4ab
    :goto_4ab
    const/4 v7, 0x6

    :goto_4ac
    const/16 v12, 0x19

    if-ge v7, v12, :cond_4ad

    const/16 v12, 0x256

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 609
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x715fc55c    # 1.10806E30f

    if-ne v12, v13, :cond_4ac

    goto :goto_4ad

    :cond_4ac
    add-int/lit8 v7, v7, 0x1

    goto :goto_4ac

    :cond_4ad
    :goto_4ad
    const/16 v7, -0x72

    :goto_4ae
    const/16 v12, -0x68

    if-ge v7, v12, :cond_4af

    const/16 v12, 0x257

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 610
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x17838419

    if-ne v12, v13, :cond_4ae

    goto :goto_4af

    :cond_4ae
    add-int/lit8 v7, v7, 0x1

    goto :goto_4ae

    :cond_4af
    :goto_4af
    const/16 v7, -0x3c

    :goto_4b0
    const/16 v12, -0x35

    if-ge v7, v12, :cond_4b1

    const/16 v12, 0x258

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 611
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x7b115807

    if-ne v12, v13, :cond_4b0

    goto :goto_4b1

    :cond_4b0
    add-int/lit8 v7, v7, 0x1

    goto :goto_4b0

    :cond_4b1
    :goto_4b1
    const/16 v7, 0x6a

    :goto_4b2
    const/16 v12, 0x7d

    if-ge v7, v12, :cond_4b3

    const/16 v12, 0x259

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 612
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x5b73a990

    if-ne v12, v13, :cond_4b2

    goto :goto_4b3

    :cond_4b2
    add-int/lit8 v7, v7, 0x1

    goto :goto_4b2

    :cond_4b3
    :goto_4b3
    const/16 v7, -0x80

    :goto_4b4
    const/16 v12, -0x70

    if-ge v7, v12, :cond_4b5

    const/16 v12, 0x25a

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 613
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x1773bc84

    if-ne v12, v13, :cond_4b4

    goto :goto_4b5

    :cond_4b4
    add-int/lit8 v7, v7, 0x1

    goto :goto_4b4

    :cond_4b5
    :goto_4b5
    const/16 v7, 0x55

    :goto_4b6
    const/16 v12, 0x66

    if-ge v7, v12, :cond_4b7

    const/16 v12, 0x25b

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 614
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0xd669421

    if-ne v12, v13, :cond_4b6

    goto :goto_4b7

    :cond_4b6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4b6

    :cond_4b7
    :goto_4b7
    const/16 v7, 0x29

    :goto_4b8
    const/16 v12, 0x38

    if-ge v7, v12, :cond_4b9

    const/16 v12, 0x25c

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 615
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x4fe973b

    if-ne v12, v13, :cond_4b8

    goto :goto_4b9

    :cond_4b8
    add-int/lit8 v7, v7, 0x1

    goto :goto_4b8

    :cond_4b9
    :goto_4b9
    const/4 v7, -0x1

    :goto_4ba
    const/16 v12, 0x14

    if-ge v7, v12, :cond_4bb

    const/16 v12, 0x25d

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 616
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x77f054df

    if-ne v12, v13, :cond_4ba

    goto :goto_4bb

    :cond_4ba
    add-int/lit8 v7, v7, 0x1

    goto :goto_4ba

    :cond_4bb
    :goto_4bb
    const/16 v7, -0x6c

    :goto_4bc
    const/16 v12, -0x51

    if-ge v7, v12, :cond_4bd

    const/16 v12, 0x25e

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 617
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0xf3776fb

    if-ne v12, v13, :cond_4bc

    goto :goto_4bd

    :cond_4bc
    add-int/lit8 v7, v7, 0x1

    goto :goto_4bc

    :cond_4bd
    :goto_4bd
    const/16 v7, -0x5c

    :goto_4be
    const/16 v12, -0x4f

    if-ge v7, v12, :cond_4bf

    const/16 v12, 0x25f

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 618
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x76f8a35c

    if-ne v12, v13, :cond_4be

    goto :goto_4bf

    :cond_4be
    add-int/lit8 v7, v7, 0x1

    goto :goto_4be

    :cond_4bf
    :goto_4bf
    const/4 v7, -0x2

    :goto_4c0
    const/4 v12, 0x3

    if-ge v7, v12, :cond_4c1

    const/16 v12, 0x260

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 619
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x3aefb1f8

    if-ne v12, v13, :cond_4c0

    goto :goto_4c1

    :cond_4c0
    add-int/lit8 v7, v7, 0x1

    goto :goto_4c0

    :cond_4c1
    :goto_4c1
    const/16 v7, 0x12

    :goto_4c2
    const/16 v12, 0x2e

    if-ge v7, v12, :cond_4c3

    const/16 v12, 0x261

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 620
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0xa4e1b2e

    if-ne v12, v13, :cond_4c2

    goto :goto_4c3

    :cond_4c2
    add-int/lit8 v7, v7, 0x1

    goto :goto_4c2

    :cond_4c3
    :goto_4c3
    const/16 v7, -0x5e

    :goto_4c4
    const/16 v12, -0x52

    if-ge v7, v12, :cond_4c5

    const/16 v12, 0x262

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 621
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2d2f0cf0

    if-ne v12, v13, :cond_4c4

    goto :goto_4c5

    :cond_4c4
    add-int/lit8 v7, v7, 0x1

    goto :goto_4c4

    :cond_4c5
    :goto_4c5
    const/16 v7, -0x1d

    :goto_4c6
    const/16 v12, -0x11

    if-ge v7, v12, :cond_4c7

    const/16 v12, 0x263

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 622
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x55765f0a

    if-ne v12, v13, :cond_4c6

    goto :goto_4c7

    :cond_4c6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4c6

    :cond_4c7
    :goto_4c7
    const/16 v7, -0x43

    :goto_4c8
    if-ge v7, v10, :cond_4c9

    const/16 v12, 0x264

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 623
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0xe4134a8

    if-ne v12, v13, :cond_4c8

    goto :goto_4c9

    :cond_4c8
    add-int/lit8 v7, v7, 0x1

    goto :goto_4c8

    :cond_4c9
    :goto_4c9
    const/16 v7, 0x60

    :goto_4ca
    const/16 v12, 0x75

    if-ge v7, v12, :cond_4cb

    const/16 v12, 0x265

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 624
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x9354aa0

    if-ne v12, v13, :cond_4ca

    goto :goto_4cb

    :cond_4ca
    add-int/lit8 v7, v7, 0x1

    goto :goto_4ca

    :cond_4cb
    :goto_4cb
    const/16 v7, 0x66

    :goto_4cc
    const/16 v12, 0x72

    if-ge v7, v12, :cond_4cd

    const/16 v12, 0x266

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 625
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x4423e863

    if-ne v12, v13, :cond_4cc

    goto :goto_4cd

    :cond_4cc
    add-int/lit8 v7, v7, 0x1

    goto :goto_4cc

    :cond_4cd
    :goto_4cd
    const/16 v7, -0x26

    :goto_4ce
    const/16 v12, -0x1f

    if-ge v7, v12, :cond_4cf

    const/16 v12, 0x267

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 626
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x58cf3b39

    if-ne v12, v13, :cond_4ce

    goto :goto_4cf

    :cond_4ce
    add-int/lit8 v7, v7, 0x1

    goto :goto_4ce

    :cond_4cf
    :goto_4cf
    const/16 v7, 0x41

    :goto_4d0
    const/16 v12, 0x56

    if-ge v7, v12, :cond_4d1

    const/16 v12, 0x268

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 627
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x681b1bba

    if-ne v12, v13, :cond_4d0

    goto :goto_4d1

    :cond_4d0
    add-int/lit8 v7, v7, 0x1

    goto :goto_4d0

    :cond_4d1
    :goto_4d1
    const/16 v7, -0x70

    :goto_4d2
    const/16 v12, -0x53

    if-ge v7, v12, :cond_4d3

    const/16 v12, 0x269

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 628
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x2e5c4970

    if-ne v12, v13, :cond_4d2

    goto :goto_4d3

    :cond_4d2
    add-int/lit8 v7, v7, 0x1

    goto :goto_4d2

    :cond_4d3
    :goto_4d3
    const/16 v7, -0x66

    :goto_4d4
    const/16 v12, -0x56

    if-ge v7, v12, :cond_4d5

    const/16 v12, 0x26a

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 629
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2b3dd3c2

    if-ne v12, v13, :cond_4d4

    goto :goto_4d5

    :cond_4d4
    add-int/lit8 v7, v7, 0x1

    goto :goto_4d4

    :cond_4d5
    :goto_4d5
    const/16 v7, -0x46

    :goto_4d6
    const/16 v12, -0x3b

    if-ge v7, v12, :cond_4d7

    const/16 v12, 0x26b

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 630
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x7c938c6e

    if-ne v12, v13, :cond_4d6

    goto :goto_4d7

    :cond_4d6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4d6

    :cond_4d7
    :goto_4d7
    const/16 v7, 0x6d

    :goto_4d8
    const/16 v12, 0x7f

    if-ge v7, v12, :cond_4d9

    const/16 v12, 0x26c

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 631
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x207218f

    if-ne v12, v13, :cond_4d8

    goto :goto_4d9

    :cond_4d8
    add-int/lit8 v7, v7, 0x1

    goto :goto_4d8

    :cond_4d9
    :goto_4d9
    const/16 v7, -0x32

    :goto_4da
    const/16 v12, -0x13

    if-ge v7, v12, :cond_4db

    const/16 v12, 0x26d

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 632
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x600ed51a

    if-ne v12, v13, :cond_4da

    goto :goto_4db

    :cond_4da
    add-int/lit8 v7, v7, 0x1

    goto :goto_4da

    :cond_4db
    :goto_4db
    const/16 v7, 0x1e

    :goto_4dc
    const/16 v12, 0x32

    if-ge v7, v12, :cond_4dd

    const/16 v12, 0x26e

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 633
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x489ab53f

    if-ne v12, v13, :cond_4dc

    goto :goto_4dd

    :cond_4dc
    add-int/lit8 v7, v7, 0x1

    goto :goto_4dc

    :cond_4dd
    :goto_4dd
    const/16 v7, -0x5e

    :goto_4de
    const/16 v12, -0x53

    if-ge v7, v12, :cond_4df

    const/16 v12, 0x26f

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 634
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2a3495de

    if-ne v12, v13, :cond_4de

    goto :goto_4df

    :cond_4de
    add-int/lit8 v7, v7, 0x1

    goto :goto_4de

    :cond_4df
    :goto_4df
    const/16 v7, 0x55

    :goto_4e0
    const/16 v12, 0x60

    if-ge v7, v12, :cond_4e1

    const/16 v12, 0x270

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 635
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x483ad657

    if-ne v12, v13, :cond_4e0

    goto :goto_4e1

    :cond_4e0
    add-int/lit8 v7, v7, 0x1

    goto :goto_4e0

    :cond_4e1
    :goto_4e1
    const/16 v7, -0x57

    :goto_4e2
    const/16 v12, -0x53

    if-ge v7, v12, :cond_4e3

    const/16 v12, 0x271

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 636
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x6ccc84d9

    if-ne v12, v13, :cond_4e2

    goto :goto_4e3

    :cond_4e2
    add-int/lit8 v7, v7, 0x1

    goto :goto_4e2

    :cond_4e3
    :goto_4e3
    const/16 v7, 0x6e

    :goto_4e4
    const/16 v12, 0x76

    if-ge v7, v12, :cond_4e5

    const/16 v12, 0x272

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 637
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x5a6353c4

    if-ne v12, v13, :cond_4e4

    goto :goto_4e5

    :cond_4e4
    add-int/lit8 v7, v7, 0x1

    goto :goto_4e4

    :cond_4e5
    :goto_4e5
    const/4 v7, 0x7

    :goto_4e6
    const/16 v12, 0x22

    if-ge v7, v12, :cond_4e7

    const/16 v12, 0x273

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 638
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x77d4b699

    if-ne v12, v13, :cond_4e6

    goto :goto_4e7

    :cond_4e6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4e6

    :cond_4e7
    :goto_4e7
    const/16 v7, -0x35

    :goto_4e8
    const/16 v12, -0x1b

    if-ge v7, v12, :cond_4e9

    const/16 v12, 0x274

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 639
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x4265f4bd

    if-ne v12, v13, :cond_4e8

    goto :goto_4e9

    :cond_4e8
    add-int/lit8 v7, v7, 0x1

    goto :goto_4e8

    :cond_4e9
    :goto_4e9
    const/16 v7, -0x30

    :goto_4ea
    const/16 v12, -0x26

    if-ge v7, v12, :cond_4eb

    const/16 v12, 0x275

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 640
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x28f08859

    if-ne v12, v13, :cond_4ea

    goto :goto_4eb

    :cond_4ea
    add-int/lit8 v7, v7, 0x1

    goto :goto_4ea

    :cond_4eb
    :goto_4eb
    const/16 v7, -0x61

    :goto_4ec
    const/16 v12, -0x4d

    if-ge v7, v12, :cond_4ed

    const/16 v12, 0x276

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 641
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x1a23c5df

    if-ne v12, v13, :cond_4ec

    goto :goto_4ed

    :cond_4ec
    add-int/lit8 v7, v7, 0x1

    goto :goto_4ec

    :cond_4ed
    :goto_4ed
    const/16 v7, -0x37

    :goto_4ee
    const/16 v12, -0x26

    if-ge v7, v12, :cond_4ef

    const/16 v12, 0x277

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 642
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x584105c3

    if-ne v12, v13, :cond_4ee

    goto :goto_4ef

    :cond_4ee
    add-int/lit8 v7, v7, 0x1

    goto :goto_4ee

    :cond_4ef
    :goto_4ef
    const/16 v7, -0x60

    :goto_4f0
    const/16 v12, -0x54

    if-ge v7, v12, :cond_4f1

    const/16 v12, 0x278

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 643
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x1bb431e8

    if-ne v12, v13, :cond_4f0

    goto :goto_4f1

    :cond_4f0
    add-int/lit8 v7, v7, 0x1

    goto :goto_4f0

    :cond_4f1
    :goto_4f1
    const/16 v7, 0x23

    :goto_4f2
    const/16 v12, 0x29

    if-ge v7, v12, :cond_4f3

    const/16 v12, 0x279

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 644
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x17fadb92

    if-ne v12, v13, :cond_4f2

    goto :goto_4f3

    :cond_4f2
    add-int/lit8 v7, v7, 0x1

    goto :goto_4f2

    :cond_4f3
    :goto_4f3
    const/16 v7, -0x74

    :goto_4f4
    const/16 v12, -0x60

    if-ge v7, v12, :cond_4f5

    const/16 v12, 0x27a

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 645
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x4d91cf41    # 3.05784864E8f

    if-ne v12, v13, :cond_4f4

    goto :goto_4f5

    :cond_4f4
    add-int/lit8 v7, v7, 0x1

    goto :goto_4f4

    :cond_4f5
    :goto_4f5
    const/16 v7, -0x59

    :goto_4f6
    const/16 v12, -0x45

    if-ge v7, v12, :cond_4f7

    const/16 v12, 0x27b

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 646
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x483b5915

    if-ne v12, v13, :cond_4f6

    goto :goto_4f7

    :cond_4f6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4f6

    :cond_4f7
    :goto_4f7
    const/16 v7, 0x6f

    :goto_4f8
    const/16 v12, 0x7c

    if-ge v7, v12, :cond_4f9

    const/16 v12, 0x27c

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 647
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x50f2256a

    if-ne v12, v13, :cond_4f8

    goto :goto_4f9

    :cond_4f8
    add-int/lit8 v7, v7, 0x1

    goto :goto_4f8

    :cond_4f9
    :goto_4f9
    const/16 v7, 0x4a

    :goto_4fa
    const/16 v12, 0x5a

    if-ge v7, v12, :cond_4fb

    const/16 v12, 0x27d

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 648
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x7050cd93

    if-ne v12, v13, :cond_4fa

    goto :goto_4fb

    :cond_4fa
    add-int/lit8 v7, v7, 0x1

    goto :goto_4fa

    :cond_4fb
    :goto_4fb
    const/16 v7, -0x1f

    :goto_4fc
    const/16 v12, -0xa

    if-ge v7, v12, :cond_4fd

    const/16 v12, 0x27e

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 649
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x17ac2ac7

    if-ne v12, v13, :cond_4fc

    goto :goto_4fd

    :cond_4fc
    add-int/lit8 v7, v7, 0x1

    goto :goto_4fc

    :cond_4fd
    :goto_4fd
    const/16 v7, 0x8

    :goto_4fe
    if-ge v7, v9, :cond_4ff

    const/16 v12, 0x27f

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 650
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x28f5b6d9

    if-ne v12, v13, :cond_4fe

    goto :goto_4ff

    :cond_4fe
    add-int/lit8 v7, v7, 0x1

    goto :goto_4fe

    :cond_4ff
    :goto_4ff
    const/16 v7, 0x40

    :goto_500
    const/16 v12, 0x4e

    if-ge v7, v12, :cond_501

    const/16 v12, 0x280

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 651
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0xff3504d

    if-ne v12, v13, :cond_500

    goto :goto_501

    :cond_500
    add-int/lit8 v7, v7, 0x1

    goto :goto_500

    :cond_501
    :goto_501
    const/4 v7, 0x7

    :goto_502
    const/16 v12, 0x22

    if-ge v7, v12, :cond_503

    const/16 v12, 0x281

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 652
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x335146ad

    if-ne v12, v13, :cond_502

    goto :goto_503

    :cond_502
    add-int/lit8 v7, v7, 0x1

    goto :goto_502

    :cond_503
    :goto_503
    const/16 v7, -0x4a

    :goto_504
    const/16 v12, -0x3a

    if-ge v7, v12, :cond_505

    const/16 v12, 0x282

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 653
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x275ba0dd

    if-ne v12, v13, :cond_504

    goto :goto_505

    :cond_504
    add-int/lit8 v7, v7, 0x1

    goto :goto_504

    :cond_505
    :goto_505
    const/16 v7, 0x76

    :goto_506
    if-ge v7, v2, :cond_507

    const/16 v12, 0x283

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 654
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2bc5ee87

    if-ne v12, v13, :cond_506

    goto :goto_507

    :cond_506
    add-int/lit8 v7, v7, 0x1

    goto :goto_506

    :cond_507
    :goto_507
    const/16 v7, 0x1c

    :goto_508
    const/16 v12, 0x29

    if-ge v7, v12, :cond_509

    const/16 v12, 0x284

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 655
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x608528b2

    if-ne v12, v13, :cond_508

    goto :goto_509

    :cond_508
    add-int/lit8 v7, v7, 0x1

    goto :goto_508

    :cond_509
    :goto_509
    const/16 v7, -0x5e

    :goto_50a
    const/16 v12, -0x57

    if-ge v7, v12, :cond_50b

    const/16 v12, 0x285

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 656
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x187d8e9c

    if-ne v12, v13, :cond_50a

    goto :goto_50b

    :cond_50a
    add-int/lit8 v7, v7, 0x1

    goto :goto_50a

    :cond_50b
    :goto_50b
    const/16 v7, 0x3a

    :goto_50c
    const/16 v12, 0x4b

    if-ge v7, v12, :cond_50d

    const/16 v12, 0x286

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 657
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x7cddc146

    if-ne v12, v13, :cond_50c

    goto :goto_50d

    :cond_50c
    add-int/lit8 v7, v7, 0x1

    goto :goto_50c

    :cond_50d
    :goto_50d
    const/16 v7, 0x10

    :goto_50e
    const/16 v12, 0x18

    if-ge v7, v12, :cond_50f

    const/16 v12, 0x287

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 658
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x6ed78a8d

    if-ne v12, v13, :cond_50e

    goto :goto_50f

    :cond_50e
    add-int/lit8 v7, v7, 0x1

    goto :goto_50e

    :cond_50f
    :goto_50f
    const/16 v7, -0x54

    :goto_510
    const/16 v12, -0x43

    if-ge v7, v12, :cond_511

    const/16 v12, 0x288

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 659
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3ecca9a1

    if-ne v12, v13, :cond_510

    goto :goto_511

    :cond_510
    add-int/lit8 v7, v7, 0x1

    goto :goto_510

    :cond_511
    :goto_511
    const/16 v7, 0x22

    :goto_512
    const/16 v12, 0x30

    if-ge v7, v12, :cond_513

    const/16 v12, 0x289

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 660
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x1876952b

    if-ne v12, v13, :cond_512

    goto :goto_513

    :cond_512
    add-int/lit8 v7, v7, 0x1

    goto :goto_512

    :cond_513
    :goto_513
    const/16 v7, 0x27

    :goto_514
    const/16 v12, 0x40

    if-ge v7, v12, :cond_515

    const/16 v12, 0x28a

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 661
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x90ffbdd

    if-ne v12, v13, :cond_514

    goto :goto_515

    :cond_514
    add-int/lit8 v7, v7, 0x1

    goto :goto_514

    :cond_515
    :goto_515
    const/4 v7, 0x3

    :goto_516
    const/16 v12, 0x19

    if-ge v7, v12, :cond_517

    const/16 v12, 0x28b

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 662
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x141b13ea

    if-ne v12, v13, :cond_516

    goto :goto_517

    :cond_516
    add-int/lit8 v7, v7, 0x1

    goto :goto_516

    :cond_517
    :goto_517
    const/16 v7, -0x11

    :goto_518
    const/16 v12, -0xb

    if-ge v7, v12, :cond_519

    const/16 v12, 0x28c

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 663
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x4b89fc40

    if-ne v12, v13, :cond_518

    goto :goto_519

    :cond_518
    add-int/lit8 v7, v7, 0x1

    goto :goto_518

    :cond_519
    :goto_519
    const/16 v7, 0x5f

    :goto_51a
    const/16 v12, 0x7c

    if-ge v7, v12, :cond_51b

    const/16 v12, 0x28d

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 664
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x70492ce6

    if-ne v12, v13, :cond_51a

    goto :goto_51b

    :cond_51a
    add-int/lit8 v7, v7, 0x1

    goto :goto_51a

    :cond_51b
    :goto_51b
    const/16 v7, 0x55

    :goto_51c
    const/16 v12, 0x69

    if-ge v7, v12, :cond_51d

    const/16 v12, 0x28e

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 665
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x515593ac

    if-ne v12, v13, :cond_51c

    goto :goto_51d

    :cond_51c
    add-int/lit8 v7, v7, 0x1

    goto :goto_51c

    :cond_51d
    :goto_51d
    const/16 v7, 0x40

    :goto_51e
    const/16 v12, 0x4b

    if-ge v7, v12, :cond_51f

    const/16 v12, 0x28f

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 666
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2468278d

    if-ne v12, v13, :cond_51e

    goto :goto_51f

    :cond_51e
    add-int/lit8 v7, v7, 0x1

    goto :goto_51e

    :cond_51f
    :goto_51f
    const/16 v7, -0x6a

    :goto_520
    const/16 v12, -0x5d

    if-ge v7, v12, :cond_521

    const/16 v12, 0x290

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 667
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x641cff9a

    if-ne v12, v13, :cond_520

    goto :goto_521

    :cond_520
    add-int/lit8 v7, v7, 0x1

    goto :goto_520

    :cond_521
    :goto_521
    const/16 v7, 0x78

    :goto_522
    if-ge v7, v2, :cond_523

    const/16 v12, 0x291

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 668
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x7f567235

    if-ne v12, v13, :cond_522

    goto :goto_523

    :cond_522
    add-int/lit8 v7, v7, 0x1

    goto :goto_522

    :cond_523
    :goto_523
    const/16 v7, -0x5f

    :goto_524
    if-ge v7, v4, :cond_525

    const/16 v12, 0x292

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 669
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x33a9c5a2

    if-ne v12, v13, :cond_524

    goto :goto_525

    :cond_524
    add-int/lit8 v7, v7, 0x1

    goto :goto_524

    :cond_525
    :goto_525
    const/16 v7, 0x43

    :goto_526
    const/16 v12, 0x53

    if-ge v7, v12, :cond_527

    const/16 v12, 0x293

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 670
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x4536f139    # -0.0015339487f

    if-ne v12, v13, :cond_526

    goto :goto_527

    :cond_526
    add-int/lit8 v7, v7, 0x1

    goto :goto_526

    :cond_527
    :goto_527
    const/16 v7, -0x2e

    :goto_528
    const/16 v12, -0x14

    if-ge v7, v12, :cond_529

    const/16 v12, 0x294

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 671
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x4dfba628    # 5.27746304E8f

    if-ne v12, v13, :cond_528

    goto :goto_529

    :cond_528
    add-int/lit8 v7, v7, 0x1

    goto :goto_528

    :cond_529
    :goto_529
    const/16 v7, -0x80

    :goto_52a
    const/16 v12, -0x75

    if-ge v7, v12, :cond_52b

    const/16 v12, 0x295

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 672
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x43b64434

    if-ne v12, v13, :cond_52a

    goto :goto_52b

    :cond_52a
    add-int/lit8 v7, v7, 0x1

    goto :goto_52a

    :cond_52b
    :goto_52b
    const/16 v7, 0x14

    :goto_52c
    const/16 v12, 0x1c

    if-ge v7, v12, :cond_52d

    const/16 v12, 0x296

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 673
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x45146a5e

    if-ne v12, v13, :cond_52c

    goto :goto_52d

    :cond_52c
    add-int/lit8 v7, v7, 0x1

    goto :goto_52c

    :cond_52d
    :goto_52d
    const/16 v7, -0x22

    :goto_52e
    const/16 v12, -0x1f

    if-ge v7, v12, :cond_52f

    const/16 v12, 0x297

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 674
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x6378852e

    if-ne v12, v13, :cond_52e

    goto :goto_52f

    :cond_52e
    add-int/lit8 v7, v7, 0x1

    goto :goto_52e

    :cond_52f
    :goto_52f
    const/16 v7, -0x5f

    :goto_530
    if-ge v7, v11, :cond_531

    const/16 v12, 0x298

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 675
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x62d58329

    if-ne v12, v13, :cond_530

    goto :goto_531

    :cond_530
    add-int/lit8 v7, v7, 0x1

    goto :goto_530

    :cond_531
    :goto_531
    const/16 v7, 0x72

    :goto_532
    if-ge v7, v2, :cond_533

    const/16 v12, 0x299

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 676
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x6a7610fe

    if-ne v12, v13, :cond_532

    goto :goto_533

    :cond_532
    add-int/lit8 v7, v7, 0x1

    goto :goto_532

    :cond_533
    :goto_533
    const/16 v7, -0x5c

    :goto_534
    const/16 v12, -0x4e

    if-ge v7, v12, :cond_535

    const/16 v12, 0x29a

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 677
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x35b70611

    if-ne v12, v13, :cond_534

    goto :goto_535

    :cond_534
    add-int/lit8 v7, v7, 0x1

    goto :goto_534

    :cond_535
    :goto_535
    const/16 v7, 0x36

    :goto_536
    const/16 v12, 0x4a

    if-ge v7, v12, :cond_537

    const/16 v12, 0x29b

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 678
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x1bf9b5b6

    if-ne v12, v13, :cond_536

    goto :goto_537

    :cond_536
    add-int/lit8 v7, v7, 0x1

    goto :goto_536

    :cond_537
    :goto_537
    const/16 v7, -0x44

    :goto_538
    const/16 v12, -0x3d

    if-ge v7, v12, :cond_539

    const/16 v12, 0x29c

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 679
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x9ca1320

    if-ne v12, v13, :cond_538

    goto :goto_539

    :cond_538
    add-int/lit8 v7, v7, 0x1

    goto :goto_538

    :cond_539
    :goto_539
    const/16 v7, -0x1c

    :goto_53a
    const/16 v12, -0xe

    if-ge v7, v12, :cond_53b

    const/16 v12, 0x29d

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 680
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x18b08e78

    if-ne v12, v13, :cond_53a

    goto :goto_53b

    :cond_53a
    add-int/lit8 v7, v7, 0x1

    goto :goto_53a

    :cond_53b
    :goto_53b
    const/16 v7, -0x75

    :goto_53c
    const/16 v12, -0x65

    if-ge v7, v12, :cond_53d

    const/16 v12, 0x29e

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 681
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x60b4ca88

    if-ne v12, v13, :cond_53c

    goto :goto_53d

    :cond_53c
    add-int/lit8 v7, v7, 0x1

    goto :goto_53c

    :cond_53d
    :goto_53d
    const/4 v7, 0x7

    :goto_53e
    if-ge v7, v9, :cond_53f

    const/16 v12, 0x29f

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 682
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x4810a685

    if-ne v12, v13, :cond_53e

    goto :goto_53f

    :cond_53e
    add-int/lit8 v7, v7, 0x1

    goto :goto_53e

    :cond_53f
    :goto_53f
    const/16 v7, 0x24

    :goto_540
    const/16 v12, 0x29

    if-ge v7, v12, :cond_541

    const/16 v12, 0x2a0

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 683
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x468da3d8

    if-ne v12, v13, :cond_540

    goto :goto_541

    :cond_540
    add-int/lit8 v7, v7, 0x1

    goto :goto_540

    :cond_541
    :goto_541
    const/16 v7, -0x55

    :goto_542
    const/16 v12, -0x51

    if-ge v7, v12, :cond_543

    const/16 v12, 0x2a1

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 684
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x39374449

    if-ne v12, v13, :cond_542

    goto :goto_543

    :cond_542
    add-int/lit8 v7, v7, 0x1

    goto :goto_542

    :cond_543
    :goto_543
    const/16 v7, -0x80

    :goto_544
    const/16 v12, -0x77

    if-ge v7, v12, :cond_545

    const/16 v12, 0x2a2

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 685
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x1736802f

    if-ne v12, v13, :cond_544

    goto :goto_545

    :cond_544
    add-int/lit8 v7, v7, 0x1

    goto :goto_544

    :cond_545
    :goto_545
    const/16 v7, 0x1d

    :goto_546
    const/16 v12, 0x2d

    if-ge v7, v12, :cond_547

    const/16 v12, 0x2a3

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 686
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x10876e76

    if-ne v12, v13, :cond_546

    goto :goto_547

    :cond_546
    add-int/lit8 v7, v7, 0x1

    goto :goto_546

    :cond_547
    :goto_547
    const/4 v7, 0x6

    :goto_548
    const/16 v12, 0x1e

    if-ge v7, v12, :cond_549

    const/16 v12, 0x2a4

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 687
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x41d7c454

    if-ne v12, v13, :cond_548

    goto :goto_549

    :cond_548
    add-int/lit8 v7, v7, 0x1

    goto :goto_548

    :cond_549
    :goto_549
    const/16 v7, -0x80

    :goto_54a
    const/16 v12, -0x6b

    if-ge v7, v12, :cond_54b

    const/16 v12, 0x2a5

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 688
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3a9e0d91

    if-ne v12, v13, :cond_54a

    goto :goto_54b

    :cond_54a
    add-int/lit8 v7, v7, 0x1

    goto :goto_54a

    :cond_54b
    :goto_54b
    const/16 v7, 0x45

    :goto_54c
    const/16 v12, 0x4e

    if-ge v7, v12, :cond_54d

    const/16 v12, 0x2a6

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 689
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x47b2e3c

    if-ne v12, v13, :cond_54c

    goto :goto_54d

    :cond_54c
    add-int/lit8 v7, v7, 0x1

    goto :goto_54c

    :cond_54d
    :goto_54d
    const/16 v7, -0x3c

    :goto_54e
    const/16 v12, -0x28

    if-ge v7, v12, :cond_54f

    const/16 v12, 0x2a7

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 690
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x5f9b04d8

    if-ne v12, v13, :cond_54e

    goto :goto_54f

    :cond_54e
    add-int/lit8 v7, v7, 0x1

    goto :goto_54e

    :cond_54f
    :goto_54f
    const/16 v7, -0x80

    :goto_550
    const/16 v12, -0x73

    if-ge v7, v12, :cond_551

    const/16 v12, 0x2a8

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 691
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x5122229e

    if-ne v12, v13, :cond_550

    goto :goto_551

    :cond_550
    add-int/lit8 v7, v7, 0x1

    goto :goto_550

    :cond_551
    :goto_551
    const/16 v7, -0x31

    :goto_552
    const/16 v12, -0x27

    if-ge v7, v12, :cond_553

    const/16 v12, 0x2a9

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 692
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x7be2ce46

    if-ne v12, v13, :cond_552

    goto :goto_553

    :cond_552
    add-int/lit8 v7, v7, 0x1

    goto :goto_552

    :cond_553
    :goto_553
    const/16 v7, 0x20

    :goto_554
    if-ge v7, v8, :cond_555

    const/16 v12, 0x2aa

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 693
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x6df0922c

    if-ne v12, v13, :cond_554

    goto :goto_555

    :cond_554
    add-int/lit8 v7, v7, 0x1

    goto :goto_554

    :cond_555
    :goto_555
    const/16 v7, 0x4e

    :goto_556
    const/16 v12, 0x66

    if-ge v7, v12, :cond_557

    const/16 v12, 0x2ab

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 694
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x732e3c07

    if-ne v12, v13, :cond_556

    goto :goto_557

    :cond_556
    add-int/lit8 v7, v7, 0x1

    goto :goto_556

    :cond_557
    :goto_557
    const/16 v7, -0x72

    :goto_558
    const/16 v12, -0x57

    if-ge v7, v12, :cond_559

    const/16 v12, 0x2ac

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 695
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x5e61469b

    if-ne v12, v13, :cond_558

    goto :goto_559

    :cond_558
    add-int/lit8 v7, v7, 0x1

    goto :goto_558

    :cond_559
    :goto_559
    const/16 v7, -0x5f

    :goto_55a
    const/16 v12, -0x4f

    if-ge v7, v12, :cond_55b

    const/16 v12, 0x2ad

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 696
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x62a989e

    if-ne v12, v13, :cond_55a

    goto :goto_55b

    :cond_55a
    add-int/lit8 v7, v7, 0x1

    goto :goto_55a

    :cond_55b
    :goto_55b
    const/16 v7, -0x5b

    :goto_55c
    if-ge v7, v11, :cond_55d

    const/16 v12, 0x2ae

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 697
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x1fc8b060

    if-ne v12, v13, :cond_55c

    goto :goto_55d

    :cond_55c
    add-int/lit8 v7, v7, 0x1

    goto :goto_55c

    :cond_55d
    :goto_55d
    const/16 v7, -0x31

    :goto_55e
    const/16 v12, -0x1e

    if-ge v7, v12, :cond_55f

    const/16 v12, 0x2af

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 698
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x66d703be

    if-ne v12, v13, :cond_55e

    goto :goto_55f

    :cond_55e
    add-int/lit8 v7, v7, 0x1

    goto :goto_55e

    :cond_55f
    :goto_55f
    const/16 v7, -0x48

    :goto_560
    const/16 v12, -0x2f

    if-ge v7, v12, :cond_561

    const/16 v12, 0x2b0

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 699
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x7e34a86e

    if-ne v12, v13, :cond_560

    goto :goto_561

    :cond_560
    add-int/lit8 v7, v7, 0x1

    goto :goto_560

    :cond_561
    :goto_561
    const/16 v7, 0x60

    :goto_562
    const/16 v12, 0x70

    if-ge v7, v12, :cond_563

    const/16 v12, 0x2b1

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 700
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x405c4535

    if-ne v12, v13, :cond_562

    goto :goto_563

    :cond_562
    add-int/lit8 v7, v7, 0x1

    goto :goto_562

    :cond_563
    :goto_563
    const/16 v7, -0x32

    :goto_564
    const/16 v12, -0x2d

    if-ge v7, v12, :cond_565

    const/16 v12, 0x2b2

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 701
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x4da3f7fc    # 3.43867264E8f

    if-ne v12, v13, :cond_564

    goto :goto_565

    :cond_564
    add-int/lit8 v7, v7, 0x1

    goto :goto_564

    :cond_565
    :goto_565
    const/16 v7, 0x52

    :goto_566
    const/16 v12, 0x62

    if-ge v7, v12, :cond_567

    const/16 v12, 0x2b3

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 702
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x5d0e008

    if-ne v12, v13, :cond_566

    goto :goto_567

    :cond_566
    add-int/lit8 v7, v7, 0x1

    goto :goto_566

    :cond_567
    :goto_567
    const/16 v7, 0x62

    :goto_568
    const/16 v12, 0x6b

    if-ge v7, v12, :cond_569

    const/16 v12, 0x2b4

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 703
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x58641c32

    if-ne v12, v13, :cond_568

    goto :goto_569

    :cond_568
    add-int/lit8 v7, v7, 0x1

    goto :goto_568

    :cond_569
    :goto_569
    const/16 v7, 0x47

    :goto_56a
    const/16 v12, 0x52

    if-ge v7, v12, :cond_56b

    const/16 v12, 0x2b5

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 704
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x75b734c5

    if-ne v12, v13, :cond_56a

    goto :goto_56b

    :cond_56a
    add-int/lit8 v7, v7, 0x1

    goto :goto_56a

    :cond_56b
    :goto_56b
    const/16 v7, -0x19

    :goto_56c
    const/16 v12, -0x9

    if-ge v7, v12, :cond_56d

    const/16 v12, 0x2b6

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 705
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x6a9120fd

    if-ne v12, v13, :cond_56c

    goto :goto_56d

    :cond_56c
    add-int/lit8 v7, v7, 0x1

    goto :goto_56c

    :cond_56d
    :goto_56d
    const/16 v7, 0x6e

    :goto_56e
    const/16 v12, 0x75

    if-ge v7, v12, :cond_56f

    const/16 v12, 0x2b7

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 706
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x413770e3

    if-ne v12, v13, :cond_56e

    goto :goto_56f

    :cond_56e
    add-int/lit8 v7, v7, 0x1

    goto :goto_56e

    :cond_56f
    :goto_56f
    const/16 v7, -0x21

    :goto_570
    const/16 v12, -0x10

    if-ge v7, v12, :cond_571

    const/16 v12, 0x2b8

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 707
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x15aa036    # -1.0990999E38f

    if-ne v12, v13, :cond_570

    goto :goto_571

    :cond_570
    add-int/lit8 v7, v7, 0x1

    goto :goto_570

    :cond_571
    :goto_571
    const/4 v7, -0x5

    :goto_572
    const/16 v12, 0x8

    if-ge v7, v12, :cond_573

    const/16 v12, 0x2b9

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 708
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x73cc74

    if-ne v12, v13, :cond_572

    goto :goto_573

    :cond_572
    add-int/lit8 v7, v7, 0x1

    goto :goto_572

    :cond_573
    :goto_573
    const/16 v7, -0x55

    :goto_574
    const/16 v12, -0x43

    if-ge v7, v12, :cond_575

    const/16 v12, 0x2ba

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 709
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x603d7011

    if-ne v12, v13, :cond_574

    goto :goto_575

    :cond_574
    add-int/lit8 v7, v7, 0x1

    goto :goto_574

    :cond_575
    :goto_575
    const/16 v7, -0x2d

    :goto_576
    const/16 v12, -0x1c

    if-ge v7, v12, :cond_577

    const/16 v12, 0x2bb

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 710
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x5c97011

    if-ne v12, v13, :cond_576

    goto :goto_577

    :cond_576
    add-int/lit8 v7, v7, 0x1

    goto :goto_576

    :cond_577
    :goto_577
    const/16 v7, -0x48

    :goto_578
    const/16 v12, -0x37

    if-ge v7, v12, :cond_579

    const/16 v12, 0x2bc

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 711
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x6b4dd262

    if-ne v12, v13, :cond_578

    goto :goto_579

    :cond_578
    add-int/lit8 v7, v7, 0x1

    goto :goto_578

    :cond_579
    :goto_579
    const/16 v7, -0x18

    :goto_57a
    const/16 v12, -0x10

    if-ge v7, v12, :cond_57b

    const/16 v12, 0x2bd

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 712
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x3e32707e

    if-ne v12, v13, :cond_57a

    goto :goto_57b

    :cond_57a
    add-int/lit8 v7, v7, 0x1

    goto :goto_57a

    :cond_57b
    :goto_57b
    const/16 v7, -0x3f

    :goto_57c
    if-ge v7, v10, :cond_57d

    const/16 v12, 0x2be

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 713
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x65470ed4

    if-ne v12, v13, :cond_57c

    goto :goto_57d

    :cond_57c
    add-int/lit8 v7, v7, 0x1

    goto :goto_57c

    :cond_57d
    :goto_57d
    const/4 v7, 0x3

    :goto_57e
    const/16 v12, 0x9

    if-ge v7, v12, :cond_57f

    const/16 v12, 0x2bf

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 714
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x79b45c3c

    if-ne v12, v13, :cond_57e

    goto :goto_57f

    :cond_57e
    add-int/lit8 v7, v7, 0x1

    goto :goto_57e

    :cond_57f
    :goto_57f
    const/16 v7, -0x1a

    :goto_580
    const/4 v12, -0x8

    if-ge v7, v12, :cond_581

    const/16 v12, 0x2c0

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 715
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x1e552556

    if-ne v12, v13, :cond_580

    goto :goto_581

    :cond_580
    add-int/lit8 v7, v7, 0x1

    goto :goto_580

    :cond_581
    :goto_581
    const/4 v7, 0x3

    :goto_582
    const/16 v12, 0xc

    if-ge v7, v12, :cond_583

    const/16 v12, 0x2c1

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 716
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x32ba41d4

    if-ne v12, v13, :cond_582

    goto :goto_583

    :cond_582
    add-int/lit8 v7, v7, 0x1

    goto :goto_582

    :cond_583
    :goto_583
    const/16 v7, 0xe

    :goto_584
    const/16 v12, 0x1f

    if-ge v7, v12, :cond_585

    const/16 v12, 0x2c2

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 717
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x7dfbbed0

    if-ne v12, v13, :cond_584

    goto :goto_585

    :cond_584
    add-int/lit8 v7, v7, 0x1

    goto :goto_584

    :cond_585
    :goto_585
    const/16 v7, 0xb

    :goto_586
    const/16 v12, 0x12

    if-ge v7, v12, :cond_587

    const/16 v12, 0x2c3

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 718
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x5cafecbc

    if-ne v12, v13, :cond_586

    goto :goto_587

    :cond_586
    add-int/lit8 v7, v7, 0x1

    goto :goto_586

    :cond_587
    :goto_587
    const/16 v7, 0x61

    :goto_588
    const/16 v12, 0x72

    if-ge v7, v12, :cond_589

    const/16 v12, 0x2c4

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 719
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x558053d7

    if-ne v12, v13, :cond_588

    goto :goto_589

    :cond_588
    add-int/lit8 v7, v7, 0x1

    goto :goto_588

    :cond_589
    :goto_589
    const/16 v7, -0x75

    :goto_58a
    const/16 v12, -0x58

    if-ge v7, v12, :cond_58b

    const/16 v12, 0x2c5

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 720
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x79ad7693

    if-ne v12, v13, :cond_58a

    goto :goto_58b

    :cond_58a
    add-int/lit8 v7, v7, 0x1

    goto :goto_58a

    :cond_58b
    :goto_58b
    const/16 v7, 0x28

    :goto_58c
    const/16 v12, 0x36

    if-ge v7, v12, :cond_58d

    const/16 v12, 0x2c6

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 721
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x5797bad5

    if-ne v12, v13, :cond_58c

    goto :goto_58d

    :cond_58c
    add-int/lit8 v7, v7, 0x1

    goto :goto_58c

    :cond_58d
    :goto_58d
    const/16 v7, -0x7c

    :goto_58e
    const/16 v12, -0x75

    if-ge v7, v12, :cond_58f

    const/16 v12, 0x2c7

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 722
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x7f694ec0

    if-ne v12, v13, :cond_58e

    goto :goto_58f

    :cond_58e
    add-int/lit8 v7, v7, 0x1

    goto :goto_58e

    :cond_58f
    :goto_58f
    const/16 v7, -0x61

    :goto_590
    const/16 v12, -0x4b

    if-ge v7, v12, :cond_591

    const/16 v12, 0x2c8

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 723
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x2edef2d8

    if-ne v12, v13, :cond_590

    goto :goto_591

    :cond_590
    add-int/lit8 v7, v7, 0x1

    goto :goto_590

    :cond_591
    :goto_591
    const/16 v7, 0x33

    :goto_592
    const/16 v12, 0x47

    if-ge v7, v12, :cond_593

    const/16 v12, 0x2c9

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 724
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x15296b19

    if-ne v12, v13, :cond_592

    goto :goto_593

    :cond_592
    add-int/lit8 v7, v7, 0x1

    goto :goto_592

    :cond_593
    :goto_593
    const/4 v7, 0x3

    :goto_594
    const/16 v12, 0x13

    if-ge v7, v12, :cond_595

    const/16 v12, 0x2ca

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 725
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x7afc50e0

    if-ne v12, v13, :cond_594

    goto :goto_595

    :cond_594
    add-int/lit8 v7, v7, 0x1

    goto :goto_594

    :cond_595
    :goto_595
    const/16 v7, -0x7b

    :goto_596
    const/16 v12, -0x75

    if-ge v7, v12, :cond_597

    const/16 v12, 0x2cb

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 726
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x5ebcae75

    if-ne v12, v13, :cond_596

    goto :goto_597

    :cond_596
    add-int/lit8 v7, v7, 0x1

    goto :goto_596

    :cond_597
    :goto_597
    const/16 v7, 0x6f

    :goto_598
    if-ge v7, v2, :cond_599

    const/16 v12, 0x2cc

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 727
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x52e268ea

    if-ne v12, v13, :cond_598

    goto :goto_599

    :cond_598
    add-int/lit8 v7, v7, 0x1

    goto :goto_598

    :cond_599
    :goto_599
    const/16 v7, -0x2e

    :goto_59a
    const/16 v12, -0x1e

    if-ge v7, v12, :cond_59b

    const/16 v12, 0x2cd

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 728
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2afb7535

    if-ne v12, v13, :cond_59a

    goto :goto_59b

    :cond_59a
    add-int/lit8 v7, v7, 0x1

    goto :goto_59a

    :cond_59b
    :goto_59b
    const/16 v7, 0x30

    :goto_59c
    const/16 v12, 0x3c

    if-ge v7, v12, :cond_59d

    const/16 v12, 0x2ce

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 729
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x4ebac122

    if-ne v12, v13, :cond_59c

    goto :goto_59d

    :cond_59c
    add-int/lit8 v7, v7, 0x1

    goto :goto_59c

    :cond_59d
    :goto_59d
    const/16 v7, -0x16

    :goto_59e
    const/16 v12, -0x9

    if-ge v7, v12, :cond_59f

    const/16 v12, 0x2cf

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 730
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0xd05929a

    if-ne v12, v13, :cond_59e

    goto :goto_59f

    :cond_59e
    add-int/lit8 v7, v7, 0x1

    goto :goto_59e

    :cond_59f
    :goto_59f
    const/16 v7, -0x13

    :goto_5a0
    const/4 v12, 0x3

    if-ge v7, v12, :cond_5a1

    const/16 v12, 0x2d0

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 731
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x25aa6655

    if-ne v12, v13, :cond_5a0

    goto :goto_5a1

    :cond_5a0
    add-int/lit8 v7, v7, 0x1

    goto :goto_5a0

    :cond_5a1
    :goto_5a1
    const/16 v7, -0xc

    :goto_5a2
    if-gez v7, :cond_5a3

    const/16 v12, 0x2d1

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 732
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0xee80428

    if-ne v12, v13, :cond_5a2

    goto :goto_5a3

    :cond_5a2
    add-int/lit8 v7, v7, 0x1

    goto :goto_5a2

    :cond_5a3
    :goto_5a3
    const/16 v7, 0x43

    :goto_5a4
    const/16 v12, 0x49

    if-ge v7, v12, :cond_5a5

    const/16 v12, 0x2d2

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 733
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x2872d277

    if-ne v12, v13, :cond_5a4

    goto :goto_5a5

    :cond_5a4
    add-int/lit8 v7, v7, 0x1

    goto :goto_5a4

    :cond_5a5
    :goto_5a5
    const/4 v7, -0x5

    :goto_5a6
    if-ge v7, v3, :cond_5a7

    const/16 v12, 0x2d3

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 734
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0xb2e6285

    if-ne v12, v13, :cond_5a6

    goto :goto_5a7

    :cond_5a6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5a6

    :cond_5a7
    :goto_5a7
    const/4 v7, -0x5

    :goto_5a8
    const/4 v12, 0x4

    if-ge v7, v12, :cond_5a9

    const/16 v12, 0x2d4

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 735
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x78b5c498

    if-ne v12, v13, :cond_5a8

    goto :goto_5a9

    :cond_5a8
    add-int/lit8 v7, v7, 0x1

    goto :goto_5a8

    :cond_5a9
    :goto_5a9
    const/16 v7, 0x5f

    :goto_5aa
    const/16 v12, 0x69

    if-ge v7, v12, :cond_5ab

    const/16 v12, 0x2d5

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 736
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x4b54c79c    # 1.3944732E7f

    if-ne v12, v13, :cond_5aa

    goto :goto_5ab

    :cond_5aa
    add-int/lit8 v7, v7, 0x1

    goto :goto_5aa

    :cond_5ab
    :goto_5ab
    const/16 v7, 0x55

    :goto_5ac
    const/16 v12, 0x60

    if-ge v7, v12, :cond_5ad

    const/16 v12, 0x2d6

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 737
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x1afd6bfb

    if-ne v12, v13, :cond_5ac

    goto :goto_5ad

    :cond_5ac
    add-int/lit8 v7, v7, 0x1

    goto :goto_5ac

    :cond_5ad
    :goto_5ad
    const/16 v7, 0x17

    :goto_5ae
    const/16 v12, 0x32

    if-ge v7, v12, :cond_5af

    const/16 v12, 0x2d7

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 738
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x37c0f60b

    if-ne v12, v13, :cond_5ae

    goto :goto_5af

    :cond_5ae
    add-int/lit8 v7, v7, 0x1

    goto :goto_5ae

    :cond_5af
    :goto_5af
    const/16 v7, 0x54

    :goto_5b0
    const/16 v12, 0x60

    if-ge v7, v12, :cond_5b1

    const/16 v12, 0x2d8

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 739
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x1d616e32

    if-ne v12, v13, :cond_5b0

    goto :goto_5b1

    :cond_5b0
    add-int/lit8 v7, v7, 0x1

    goto :goto_5b0

    :cond_5b1
    :goto_5b1
    const/16 v7, -0x80

    :goto_5b2
    const/16 v12, -0x74

    if-ge v7, v12, :cond_5b3

    const/16 v12, 0x2d9

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 740
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x75a4e3f7

    if-ne v12, v13, :cond_5b2

    goto :goto_5b3

    :cond_5b2
    add-int/lit8 v7, v7, 0x1

    goto :goto_5b2

    :cond_5b3
    :goto_5b3
    const/16 v7, 0x65

    :goto_5b4
    const/16 v12, 0x6e

    if-ge v7, v12, :cond_5b5

    const/16 v12, 0x2da

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 741
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x35296e92

    if-ne v12, v13, :cond_5b4

    goto :goto_5b5

    :cond_5b4
    add-int/lit8 v7, v7, 0x1

    goto :goto_5b4

    :cond_5b5
    :goto_5b5
    const/16 v7, -0x1b

    :goto_5b6
    const/16 v12, -0x13

    if-ge v7, v12, :cond_5b7

    const/16 v12, 0x2db

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 742
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x7448439c

    if-ne v12, v13, :cond_5b6

    goto :goto_5b7

    :cond_5b6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5b6

    :cond_5b7
    :goto_5b7
    const/16 v7, 0x51

    :goto_5b8
    const/16 v12, 0x5c

    if-ge v7, v12, :cond_5b9

    const/16 v12, 0x2dc

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 743
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x5a385246

    if-ne v12, v13, :cond_5b8

    goto :goto_5b9

    :cond_5b8
    add-int/lit8 v7, v7, 0x1

    goto :goto_5b8

    :cond_5b9
    :goto_5b9
    const/16 v7, -0x50

    :goto_5ba
    const/16 v12, -0x40

    if-ge v7, v12, :cond_5bb

    const/16 v12, 0x2dd

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 744
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0xfb089cb

    if-ne v12, v13, :cond_5ba

    goto :goto_5bb

    :cond_5ba
    add-int/lit8 v7, v7, 0x1

    goto :goto_5ba

    :cond_5bb
    :goto_5bb
    const/16 v7, -0x4b

    :goto_5bc
    const/16 v12, -0x3c

    if-ge v7, v12, :cond_5bd

    const/16 v12, 0x2de

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 745
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x5dae6da

    if-ne v12, v13, :cond_5bc

    goto :goto_5bd

    :cond_5bc
    add-int/lit8 v7, v7, 0x1

    goto :goto_5bc

    :cond_5bd
    :goto_5bd
    const/16 v7, 0x1d

    :goto_5be
    const/16 v12, 0x2e

    if-ge v7, v12, :cond_5bf

    const/16 v12, 0x2df

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 746
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x4c3f27c1    # 5.0110212E7f

    if-ne v12, v13, :cond_5be

    goto :goto_5bf

    :cond_5be
    add-int/lit8 v7, v7, 0x1

    goto :goto_5be

    :cond_5bf
    :goto_5bf
    const/16 v7, 0xc

    :goto_5c0
    if-ge v7, v9, :cond_5c1

    const/16 v12, 0x2e0

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 747
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x55e04bee

    if-ne v12, v13, :cond_5c0

    goto :goto_5c1

    :cond_5c0
    add-int/lit8 v7, v7, 0x1

    goto :goto_5c0

    :cond_5c1
    :goto_5c1
    const/16 v7, 0x75

    :goto_5c2
    const/16 v12, 0x7f

    if-ge v7, v12, :cond_5c3

    const/16 v12, 0x2e1

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 748
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x7df0a850

    if-ne v12, v13, :cond_5c2

    goto :goto_5c3

    :cond_5c2
    add-int/lit8 v7, v7, 0x1

    goto :goto_5c2

    :cond_5c3
    :goto_5c3
    const/16 v7, -0x18

    :goto_5c4
    const/16 v12, -0xa

    if-ge v7, v12, :cond_5c5

    const/16 v12, 0x2e2

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 749
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x484aef24

    if-ne v12, v13, :cond_5c4

    goto :goto_5c5

    :cond_5c4
    add-int/lit8 v7, v7, 0x1

    goto :goto_5c4

    :cond_5c5
    :goto_5c5
    const/16 v7, 0x43

    :goto_5c6
    const/16 v12, 0x50

    if-ge v7, v12, :cond_5c7

    const/16 v12, 0x2e3

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 750
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x7eb020b2

    if-ne v12, v13, :cond_5c6

    goto :goto_5c7

    :cond_5c6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5c6

    :cond_5c7
    :goto_5c7
    const/16 v7, -0x14

    :goto_5c8
    const/4 v12, -0x4

    if-ge v7, v12, :cond_5c9

    const/16 v12, 0x2e4

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 751
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x78638ee1

    if-ne v12, v13, :cond_5c8

    goto :goto_5c9

    :cond_5c8
    add-int/lit8 v7, v7, 0x1

    goto :goto_5c8

    :cond_5c9
    :goto_5c9
    const/16 v7, 0x22

    :goto_5ca
    const/16 v12, 0x30

    if-ge v7, v12, :cond_5cb

    const/16 v12, 0x2e5

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 752
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x39ec9af4

    if-ne v12, v13, :cond_5ca

    goto :goto_5cb

    :cond_5ca
    add-int/lit8 v7, v7, 0x1

    goto :goto_5ca

    :cond_5cb
    :goto_5cb
    const/16 v7, 0x13

    :goto_5cc
    const/16 v12, 0x24

    if-ge v7, v12, :cond_5cd

    const/16 v12, 0x2e6

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 753
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x32c05ec

    if-ne v12, v13, :cond_5cc

    goto :goto_5cd

    :cond_5cc
    add-int/lit8 v7, v7, 0x1

    goto :goto_5cc

    :cond_5cd
    :goto_5cd
    const/16 v7, -0x27

    :goto_5ce
    const/16 v12, -0x19

    if-ge v7, v12, :cond_5cf

    const/16 v12, 0x2e7

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 754
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x26223363

    if-ne v12, v13, :cond_5ce

    goto :goto_5cf

    :cond_5ce
    add-int/lit8 v7, v7, 0x1

    goto :goto_5ce

    :cond_5cf
    :goto_5cf
    const/16 v7, 0x36

    :goto_5d0
    const/16 v12, 0x52

    if-ge v7, v12, :cond_5d1

    const/16 v12, 0x2e8

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 755
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x17fd0db3

    if-ne v12, v13, :cond_5d0

    goto :goto_5d1

    :cond_5d0
    add-int/lit8 v7, v7, 0x1

    goto :goto_5d0

    :cond_5d1
    :goto_5d1
    const/16 v7, -0x77

    :goto_5d2
    const/16 v12, -0x6d

    if-ge v7, v12, :cond_5d3

    const/16 v12, 0x2e9

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 756
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x5d9b1279

    if-ne v12, v13, :cond_5d2

    goto :goto_5d3

    :cond_5d2
    add-int/lit8 v7, v7, 0x1

    goto :goto_5d2

    :cond_5d3
    :goto_5d3
    const/16 v7, 0x1b

    :goto_5d4
    const/16 v12, 0x24

    if-ge v7, v12, :cond_5d5

    const/16 v12, 0x2ea

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 757
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x54e3ed99

    if-ne v12, v13, :cond_5d4

    goto :goto_5d5

    :cond_5d4
    add-int/lit8 v7, v7, 0x1

    goto :goto_5d4

    :cond_5d5
    :goto_5d5
    const/16 v7, -0x59

    :goto_5d6
    if-ge v7, v11, :cond_5d7

    const/16 v12, 0x2eb

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 758
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x4f0bc1d7

    if-ne v12, v13, :cond_5d6

    goto :goto_5d7

    :cond_5d6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5d6

    :cond_5d7
    :goto_5d7
    const/16 v7, -0x18

    :goto_5d8
    const/16 v12, -0x9

    if-ge v7, v12, :cond_5d9

    const/16 v12, 0x2ec

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 759
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x69b95cfa

    if-ne v12, v13, :cond_5d8

    goto :goto_5d9

    :cond_5d8
    add-int/lit8 v7, v7, 0x1

    goto :goto_5d8

    :cond_5d9
    :goto_5d9
    const/16 v7, 0x61

    :goto_5da
    const/16 v12, 0x76

    if-ge v7, v12, :cond_5db

    const/16 v12, 0x2ed

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 760
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x554bf649

    if-ne v12, v13, :cond_5da

    goto :goto_5db

    :cond_5da
    add-int/lit8 v7, v7, 0x1

    goto :goto_5da

    :cond_5db
    :goto_5db
    const/16 v7, -0x1a

    :goto_5dc
    const/16 v12, -0xd

    if-ge v7, v12, :cond_5dd

    const/16 v12, 0x2ee

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 761
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x1c93251a

    if-ne v12, v13, :cond_5dc

    goto :goto_5dd

    :cond_5dc
    add-int/lit8 v7, v7, 0x1

    goto :goto_5dc

    :cond_5dd
    :goto_5dd
    const/16 v7, -0x4d

    :goto_5de
    const/16 v12, -0x41

    if-ge v7, v12, :cond_5df

    const/16 v12, 0x2ef

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 762
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x70f82173

    if-ne v12, v13, :cond_5de

    goto :goto_5df

    :cond_5de
    add-int/lit8 v7, v7, 0x1

    goto :goto_5de

    :cond_5df
    :goto_5df
    const/16 v7, -0x68

    :goto_5e0
    const/16 v12, -0x4e

    if-ge v7, v12, :cond_5e1

    const/16 v12, 0x2f0

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 763
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x5fd1f364

    if-ne v12, v13, :cond_5e0

    goto :goto_5e1

    :cond_5e0
    add-int/lit8 v7, v7, 0x1

    goto :goto_5e0

    :cond_5e1
    :goto_5e1
    const/4 v7, -0x1

    :goto_5e2
    const/16 v12, 0x9

    if-ge v7, v12, :cond_5e3

    const/16 v12, 0x2f1

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 764
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2322518a

    if-ne v12, v13, :cond_5e2

    goto :goto_5e3

    :cond_5e2
    add-int/lit8 v7, v7, 0x1

    goto :goto_5e2

    :cond_5e3
    :goto_5e3
    const/16 v7, -0xd

    :goto_5e4
    if-ge v7, v3, :cond_5e5

    const/16 v12, 0x2f2

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 765
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x366dc816

    if-ne v12, v13, :cond_5e4

    goto :goto_5e5

    :cond_5e4
    add-int/lit8 v7, v7, 0x1

    goto :goto_5e4

    :cond_5e5
    :goto_5e5
    const/16 v7, 0x69

    :goto_5e6
    const/16 v12, 0x7e

    if-ge v7, v12, :cond_5e7

    const/16 v12, 0x2f3

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 766
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x16cf6d1b

    if-ne v12, v13, :cond_5e6

    goto :goto_5e7

    :cond_5e6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5e6

    :cond_5e7
    :goto_5e7
    const/16 v7, 0x6f

    :goto_5e8
    const/16 v12, 0x7d

    if-ge v7, v12, :cond_5e9

    const/16 v12, 0x2f4

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 767
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x6f07b23

    if-ne v12, v13, :cond_5e8

    goto :goto_5e9

    :cond_5e8
    add-int/lit8 v7, v7, 0x1

    goto :goto_5e8

    :cond_5e9
    :goto_5e9
    const/16 v7, -0x58

    :goto_5ea
    const/16 v12, -0x46

    if-ge v7, v12, :cond_5eb

    const/16 v12, 0x2f5

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 768
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x5d5fe28c

    if-ne v12, v13, :cond_5ea

    goto :goto_5eb

    :cond_5ea
    add-int/lit8 v7, v7, 0x1

    goto :goto_5ea

    :cond_5eb
    :goto_5eb
    const/16 v7, -0x6e

    :goto_5ec
    const/16 v12, -0x5d

    if-ge v7, v12, :cond_5ed

    const/16 v12, 0x2f6

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 769
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0xf84e6b4

    if-ne v12, v13, :cond_5ec

    goto :goto_5ed

    :cond_5ec
    add-int/lit8 v7, v7, 0x1

    goto :goto_5ec

    :cond_5ed
    :goto_5ed
    const/16 v7, 0x67

    :goto_5ee
    const/16 v12, 0x79

    if-ge v7, v12, :cond_5ef

    const/16 v12, 0x2f7

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 770
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3e0b338b

    if-ne v12, v13, :cond_5ee

    goto :goto_5ef

    :cond_5ee
    add-int/lit8 v7, v7, 0x1

    goto :goto_5ee

    :cond_5ef
    :goto_5ef
    const/16 v7, -0x5e

    :goto_5f0
    const/16 v12, -0x50

    if-ge v7, v12, :cond_5f1

    const/16 v12, 0x2f8

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 771
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x71c9d09a

    if-ne v12, v13, :cond_5f0

    goto :goto_5f1

    :cond_5f0
    add-int/lit8 v7, v7, 0x1

    goto :goto_5f0

    :cond_5f1
    :goto_5f1
    const/4 v7, -0x5

    :goto_5f2
    if-ge v7, v9, :cond_5f3

    const/16 v12, 0x2f9

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 772
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x62f44b60

    if-ne v12, v13, :cond_5f2

    goto :goto_5f3

    :cond_5f2
    add-int/lit8 v7, v7, 0x1

    goto :goto_5f2

    :cond_5f3
    :goto_5f3
    const/16 v7, 0x49

    :goto_5f4
    const/16 v12, 0x56

    if-ge v7, v12, :cond_5f5

    const/16 v12, 0x2fa

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 773
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x15bf4557

    if-ne v12, v13, :cond_5f4

    goto :goto_5f5

    :cond_5f4
    add-int/lit8 v7, v7, 0x1

    goto :goto_5f4

    :cond_5f5
    :goto_5f5
    const/16 v7, -0x2a

    :goto_5f6
    const/16 v12, -0x1b

    if-ge v7, v12, :cond_5f7

    const/16 v12, 0x2fb

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 774
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x6e6e912c

    if-ne v12, v13, :cond_5f6

    goto :goto_5f7

    :cond_5f6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5f6

    :cond_5f7
    :goto_5f7
    const/16 v7, 0x29

    :goto_5f8
    const/16 v12, 0x2f

    if-ge v7, v12, :cond_5f9

    const/16 v12, 0x2fc

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 775
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x7513bc64

    if-ne v12, v13, :cond_5f8

    goto :goto_5f9

    :cond_5f8
    add-int/lit8 v7, v7, 0x1

    goto :goto_5f8

    :cond_5f9
    :goto_5f9
    const/16 v7, 0x5b

    :goto_5fa
    const/16 v12, 0x65

    if-ge v7, v12, :cond_5fb

    const/16 v12, 0x2fd

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 776
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2f750b32

    if-ne v12, v13, :cond_5fa

    goto :goto_5fb

    :cond_5fa
    add-int/lit8 v7, v7, 0x1

    goto :goto_5fa

    :cond_5fb
    :goto_5fb
    const/16 v7, 0x59

    :goto_5fc
    const/16 v12, 0x66

    if-ge v7, v12, :cond_5fd

    const/16 v12, 0x2fe

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 777
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x4fdd3846

    if-ne v12, v13, :cond_5fc

    goto :goto_5fd

    :cond_5fc
    add-int/lit8 v7, v7, 0x1

    goto :goto_5fc

    :cond_5fd
    :goto_5fd
    const/16 v7, 0x68

    :goto_5fe
    const/16 v12, 0x71

    if-ge v7, v12, :cond_5ff

    const/16 v12, 0x2ff

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 778
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x27775b3

    if-ne v12, v13, :cond_5fe

    goto :goto_5ff

    :cond_5fe
    add-int/lit8 v7, v7, 0x1

    goto :goto_5fe

    :cond_5ff
    :goto_5ff
    const/16 v7, 0x55

    :goto_600
    const/16 v12, 0x67

    if-ge v7, v12, :cond_601

    const/16 v12, 0x300

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 779
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x3262a85

    if-ne v12, v13, :cond_600

    goto :goto_601

    :cond_600
    add-int/lit8 v7, v7, 0x1

    goto :goto_600

    :cond_601
    :goto_601
    const/16 v7, 0x28

    :goto_602
    const/16 v12, 0x44

    if-ge v7, v12, :cond_603

    const/16 v12, 0x301

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 780
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x75d298eb

    if-ne v12, v13, :cond_602

    goto :goto_603

    :cond_602
    add-int/lit8 v7, v7, 0x1

    goto :goto_602

    :cond_603
    :goto_603
    const/16 v7, -0x80

    :goto_604
    const/16 v12, -0x70

    if-ge v7, v12, :cond_605

    const/16 v12, 0x302

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 781
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2cadb1c2

    if-ne v12, v13, :cond_604

    goto :goto_605

    :cond_604
    add-int/lit8 v7, v7, 0x1

    goto :goto_604

    :cond_605
    :goto_605
    const/16 v7, -0x19

    :goto_606
    const/16 v12, -0x14

    if-ge v7, v12, :cond_607

    const/16 v12, 0x303

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 782
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x18760425

    if-ne v12, v13, :cond_606

    goto :goto_607

    :cond_606
    add-int/lit8 v7, v7, 0x1

    goto :goto_606

    :cond_607
    :goto_607
    const/16 v7, 0x1d

    :goto_608
    const/16 v12, 0x2b

    if-ge v7, v12, :cond_609

    const/16 v12, 0x304

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 783
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x173a2325    # 6.01442E-25f

    if-ne v12, v13, :cond_608

    goto :goto_609

    :cond_608
    add-int/lit8 v7, v7, 0x1

    goto :goto_608

    :cond_609
    :goto_609
    const/16 v7, 0x65

    :goto_60a
    const/16 v12, 0x73

    if-ge v7, v12, :cond_60b

    const/16 v12, 0x305

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 784
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x1ba4056b

    if-ne v12, v13, :cond_60a

    goto :goto_60b

    :cond_60a
    add-int/lit8 v7, v7, 0x1

    goto :goto_60a

    :cond_60b
    :goto_60b
    const/16 v7, -0x79

    :goto_60c
    const/16 v12, -0x60

    if-ge v7, v12, :cond_60d

    const/16 v12, 0x306

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 785
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x621442f8

    if-ne v12, v13, :cond_60c

    goto :goto_60d

    :cond_60c
    add-int/lit8 v7, v7, 0x1

    goto :goto_60c

    :cond_60d
    :goto_60d
    const/16 v7, 0x3e

    :goto_60e
    const/16 v12, 0x47

    if-ge v7, v12, :cond_60f

    const/16 v12, 0x307

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 786
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x58214c96

    if-ne v12, v13, :cond_60e

    goto :goto_60f

    :cond_60e
    add-int/lit8 v7, v7, 0x1

    goto :goto_60e

    :cond_60f
    :goto_60f
    const/16 v7, -0x80

    :goto_610
    const/16 v12, -0x7f

    if-ge v7, v12, :cond_611

    const/16 v12, 0x308

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 787
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2861edf0

    if-ne v12, v13, :cond_610

    goto :goto_611

    :cond_610
    add-int/lit8 v7, v7, 0x1

    goto :goto_610

    :cond_611
    :goto_611
    const/16 v7, -0x73

    :goto_612
    const/16 v12, -0x5d

    if-ge v7, v12, :cond_613

    const/16 v12, 0x309

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 788
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x6ecc2a38

    if-ne v12, v13, :cond_612

    goto :goto_613

    :cond_612
    add-int/lit8 v7, v7, 0x1

    goto :goto_612

    :cond_613
    :goto_613
    const/16 v7, 0x71

    :goto_614
    const/16 v12, 0x7c

    if-ge v7, v12, :cond_615

    const/16 v12, 0x30a

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 789
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x50fde45c

    if-ne v12, v13, :cond_614

    goto :goto_615

    :cond_614
    add-int/lit8 v7, v7, 0x1

    goto :goto_614

    :cond_615
    :goto_615
    const/16 v7, -0x79

    :goto_616
    const/16 v12, -0x6a

    if-ge v7, v12, :cond_617

    const/16 v12, 0x30b

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 790
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3cb74c7e

    if-ne v12, v13, :cond_616

    goto :goto_617

    :cond_616
    add-int/lit8 v7, v7, 0x1

    goto :goto_616

    :cond_617
    :goto_617
    const/16 v7, 0x21

    :goto_618
    const/16 v12, 0x2d

    if-ge v7, v12, :cond_619

    const/16 v12, 0x30c

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 791
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x1311207b

    if-ne v12, v13, :cond_618

    goto :goto_619

    :cond_618
    add-int/lit8 v7, v7, 0x1

    goto :goto_618

    :cond_619
    :goto_619
    const/16 v7, 0x5a

    :goto_61a
    const/16 v12, 0x72

    if-ge v7, v12, :cond_61b

    const/16 v12, 0x30d

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 792
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x5fd4e36a

    if-ne v12, v13, :cond_61a

    goto :goto_61b

    :cond_61a
    add-int/lit8 v7, v7, 0x1

    goto :goto_61a

    :cond_61b
    :goto_61b
    const/16 v7, -0x5c

    :goto_61c
    if-ge v7, v11, :cond_61d

    const/16 v12, 0x30e

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 793
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x3a3f36e6

    if-ne v12, v13, :cond_61c

    goto :goto_61d

    :cond_61c
    add-int/lit8 v7, v7, 0x1

    goto :goto_61c

    :cond_61d
    :goto_61d
    const/16 v7, -0x14

    :goto_61e
    const/4 v12, -0x3

    if-ge v7, v12, :cond_61f

    const/16 v12, 0x30f

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 794
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x54d5a4f2

    if-ne v12, v13, :cond_61e

    goto :goto_61f

    :cond_61e
    add-int/lit8 v7, v7, 0x1

    goto :goto_61e

    :cond_61f
    :goto_61f
    const/16 v7, 0x69

    :goto_620
    const/16 v12, 0x7f

    if-ge v7, v12, :cond_621

    const/16 v12, 0x310

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 795
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2e56d804

    if-ne v12, v13, :cond_620

    goto :goto_621

    :cond_620
    add-int/lit8 v7, v7, 0x1

    goto :goto_620

    :cond_621
    :goto_621
    const/16 v7, 0x57

    :goto_622
    const/16 v12, 0x69

    if-ge v7, v12, :cond_623

    const/16 v12, 0x311

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 796
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x159819d6

    if-ne v12, v13, :cond_622

    goto :goto_623

    :cond_622
    add-int/lit8 v7, v7, 0x1

    goto :goto_622

    :cond_623
    :goto_623
    const/16 v7, 0x2b

    :goto_624
    if-ge v7, v8, :cond_625

    const/16 v12, 0x312

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 797
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x73b86ab2

    if-ne v12, v13, :cond_624

    goto :goto_625

    :cond_624
    add-int/lit8 v7, v7, 0x1

    goto :goto_624

    :cond_625
    :goto_625
    const/16 v7, 0x5e

    :goto_626
    const/16 v12, 0x70

    if-ge v7, v12, :cond_627

    const/16 v12, 0x313

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 798
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x54f9bef5

    if-ne v12, v13, :cond_626

    goto :goto_627

    :cond_626
    add-int/lit8 v7, v7, 0x1

    goto :goto_626

    :cond_627
    :goto_627
    const/16 v7, 0x3d

    :goto_628
    const/16 v12, 0x4b

    if-ge v7, v12, :cond_629

    const/16 v12, 0x314

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 799
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0xf17716e

    if-ne v12, v13, :cond_628

    goto :goto_629

    :cond_628
    add-int/lit8 v7, v7, 0x1

    goto :goto_628

    :cond_629
    :goto_629
    const/16 v7, 0x73

    :goto_62a
    if-ge v7, v2, :cond_62b

    const/16 v12, 0x315

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 800
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x1017544f

    if-ne v12, v13, :cond_62a

    goto :goto_62b

    :cond_62a
    add-int/lit8 v7, v7, 0x1

    goto :goto_62a

    :cond_62b
    :goto_62b
    const/16 v7, -0x7d

    :goto_62c
    const/16 v12, -0x68

    if-ge v7, v12, :cond_62d

    const/16 v12, 0x316

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 801
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2b875248

    if-ne v12, v13, :cond_62c

    goto :goto_62d

    :cond_62c
    add-int/lit8 v7, v7, 0x1

    goto :goto_62c

    :cond_62d
    :goto_62d
    const/16 v7, 0x2f

    :goto_62e
    const/16 v12, 0x39

    if-ge v7, v12, :cond_62f

    const/16 v12, 0x317

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 802
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x2a701b69

    if-ne v12, v13, :cond_62e

    goto :goto_62f

    :cond_62e
    add-int/lit8 v7, v7, 0x1

    goto :goto_62e

    :cond_62f
    :goto_62f
    const/16 v7, -0x56

    :goto_630
    const/16 v12, -0x49

    if-ge v7, v12, :cond_631

    const/16 v12, 0x318

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 803
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x74489d48

    if-ne v12, v13, :cond_630

    goto :goto_631

    :cond_630
    add-int/lit8 v7, v7, 0x1

    goto :goto_630

    :cond_631
    :goto_631
    const/16 v7, 0x71

    :goto_632
    const/16 v12, 0x7d

    if-ge v7, v12, :cond_633

    const/16 v12, 0x319

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 804
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x5b65abd9

    if-ne v12, v13, :cond_632

    goto :goto_633

    :cond_632
    add-int/lit8 v7, v7, 0x1

    goto :goto_632

    :cond_633
    :goto_633
    const/16 v7, -0x37

    :goto_634
    const/16 v12, -0x27

    if-ge v7, v12, :cond_635

    const/16 v12, 0x31a

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 805
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x25a4f34b

    if-ne v12, v13, :cond_634

    goto :goto_635

    :cond_634
    add-int/lit8 v7, v7, 0x1

    goto :goto_634

    :cond_635
    :goto_635
    const/16 v7, 0x5f

    :goto_636
    const/16 v12, 0x7a

    if-ge v7, v12, :cond_637

    const/16 v12, 0x31b

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 806
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3be50f6b

    if-ne v12, v13, :cond_636

    goto :goto_637

    :cond_636
    add-int/lit8 v7, v7, 0x1

    goto :goto_636

    :cond_637
    :goto_637
    const/16 v7, 0x3e

    :goto_638
    const/16 v12, 0x47

    if-ge v7, v12, :cond_639

    const/16 v12, 0x31c

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 807
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x338dc286    # -6.35018E7f

    if-ne v12, v13, :cond_638

    goto :goto_639

    :cond_638
    add-int/lit8 v7, v7, 0x1

    goto :goto_638

    :cond_639
    :goto_639
    const/16 v7, -0x50

    :goto_63a
    const/16 v12, -0x39

    if-ge v7, v12, :cond_63b

    const/16 v12, 0x31d

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 808
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x51b98f8a

    if-ne v12, v13, :cond_63a

    goto :goto_63b

    :cond_63a
    add-int/lit8 v7, v7, 0x1

    goto :goto_63a

    :cond_63b
    :goto_63b
    const/4 v7, -0x3

    :goto_63c
    const/16 v12, 0xd

    if-ge v7, v12, :cond_63d

    const/16 v12, 0x31e

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 809
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x61d926f0

    if-ne v12, v13, :cond_63c

    goto :goto_63d

    :cond_63c
    add-int/lit8 v7, v7, 0x1

    goto :goto_63c

    :cond_63d
    :goto_63d
    const/16 v7, 0x8

    :goto_63e
    const/16 v12, 0x1d

    if-ge v7, v12, :cond_63f

    const/16 v12, 0x31f

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 810
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x71d37cc5

    if-ne v12, v13, :cond_63e

    goto :goto_63f

    :cond_63e
    add-int/lit8 v7, v7, 0x1

    goto :goto_63e

    :cond_63f
    :goto_63f
    const/16 v7, -0x46

    :goto_640
    if-ge v7, v10, :cond_641

    const/16 v12, 0x320

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 811
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0xa3f157

    if-ne v12, v13, :cond_640

    goto :goto_641

    :cond_640
    add-int/lit8 v7, v7, 0x1

    goto :goto_640

    :cond_641
    :goto_641
    const/4 v7, -0x6

    :goto_642
    const/4 v12, 0x4

    if-ge v7, v12, :cond_643

    const/16 v12, 0x321

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 812
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x2e620a4e

    if-ne v12, v13, :cond_642

    goto :goto_643

    :cond_642
    add-int/lit8 v7, v7, 0x1

    goto :goto_642

    :cond_643
    :goto_643
    const/16 v7, 0x52

    :goto_644
    const/16 v12, 0x6d

    if-ge v7, v12, :cond_645

    const/16 v12, 0x322

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 813
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3ce2f094

    if-ne v12, v13, :cond_644

    goto :goto_645

    :cond_644
    add-int/lit8 v7, v7, 0x1

    goto :goto_644

    :cond_645
    :goto_645
    const/16 v7, 0x38

    :goto_646
    if-ge v7, v15, :cond_647

    const/16 v12, 0x323

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 814
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x40ff6877

    if-ne v12, v13, :cond_646

    goto :goto_647

    :cond_646
    add-int/lit8 v7, v7, 0x1

    goto :goto_646

    :cond_647
    :goto_647
    const/4 v7, 0x5

    :goto_648
    const/16 v12, 0x1b

    if-ge v7, v12, :cond_649

    const/16 v12, 0x324

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 815
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x422a5cc6

    if-ne v12, v13, :cond_648

    goto :goto_649

    :cond_648
    add-int/lit8 v7, v7, 0x1

    goto :goto_648

    :cond_649
    :goto_649
    const/16 v7, -0x71

    :goto_64a
    const/16 v12, -0x69

    if-ge v7, v12, :cond_64b

    const/16 v12, 0x325

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 816
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x7a93fd12

    if-ne v12, v13, :cond_64a

    goto :goto_64b

    :cond_64a
    add-int/lit8 v7, v7, 0x1

    goto :goto_64a

    :cond_64b
    :goto_64b
    const/16 v7, -0x64

    :goto_64c
    const/16 v12, -0x4d

    if-ge v7, v12, :cond_64d

    const/16 v12, 0x326

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 817
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x340e596b    # -3.1673642E7f

    if-ne v12, v13, :cond_64c

    goto :goto_64d

    :cond_64c
    add-int/lit8 v7, v7, 0x1

    goto :goto_64c

    :cond_64d
    :goto_64d
    const/16 v7, -0x76

    :goto_64e
    const/16 v12, -0x65

    if-ge v7, v12, :cond_64f

    const/16 v12, 0x327

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 818
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x4c89881a    # 7.2106192E7f

    if-ne v12, v13, :cond_64e

    goto :goto_64f

    :cond_64e
    add-int/lit8 v7, v7, 0x1

    goto :goto_64e

    :cond_64f
    :goto_64f
    const/4 v7, -0x7

    :goto_650
    const/16 v12, 0xc

    if-ge v7, v12, :cond_651

    const/16 v12, 0x328

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 819
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x1e8b8823

    if-ne v12, v13, :cond_650

    goto :goto_651

    :cond_650
    add-int/lit8 v7, v7, 0x1

    goto :goto_650

    :cond_651
    :goto_651
    const/16 v7, 0x6d

    :goto_652
    if-ge v7, v2, :cond_653

    const/16 v12, 0x329

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 820
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x26452402

    if-ne v12, v13, :cond_652

    goto :goto_653

    :cond_652
    add-int/lit8 v7, v7, 0x1

    goto :goto_652

    :cond_653
    :goto_653
    const/16 v7, 0x13

    :goto_654
    const/16 v12, 0x20

    if-ge v7, v12, :cond_655

    const/16 v12, 0x32a

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 821
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x72ad5b3b

    if-ne v12, v13, :cond_654

    goto :goto_655

    :cond_654
    add-int/lit8 v7, v7, 0x1

    goto :goto_654

    :cond_655
    :goto_655
    const/16 v7, 0x45

    :goto_656
    const/16 v12, 0x58

    if-ge v7, v12, :cond_657

    const/16 v12, 0x32b

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 822
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x2544562a

    if-ne v12, v13, :cond_656

    goto :goto_657

    :cond_656
    add-int/lit8 v7, v7, 0x1

    goto :goto_656

    :cond_657
    :goto_657
    const/16 v7, -0x12

    :goto_658
    const/4 v12, -0x5

    if-ge v7, v12, :cond_659

    const/16 v12, 0x32c

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 823
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x6b026605

    if-ne v12, v13, :cond_658

    goto :goto_659

    :cond_658
    add-int/lit8 v7, v7, 0x1

    goto :goto_658

    :cond_659
    :goto_659
    const/16 v7, 0x1b

    :goto_65a
    const/16 v12, 0x22

    if-ge v7, v12, :cond_65b

    const/16 v12, 0x32d

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 824
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x1a7fffdf

    if-ne v12, v13, :cond_65a

    goto :goto_65b

    :cond_65a
    add-int/lit8 v7, v7, 0x1

    goto :goto_65a

    :cond_65b
    :goto_65b
    const/16 v7, 0x15

    :goto_65c
    const/16 v12, 0x26

    if-ge v7, v12, :cond_65d

    const/16 v12, 0x32e

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 825
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x1ab9ab8d

    if-ne v12, v13, :cond_65c

    goto :goto_65d

    :cond_65c
    add-int/lit8 v7, v7, 0x1

    goto :goto_65c

    :cond_65d
    :goto_65d
    const/16 v7, -0x52

    :goto_65e
    const/16 v12, -0x3d

    if-ge v7, v12, :cond_65f

    const/16 v12, 0x32f

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 826
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2e3d7ad0

    if-ne v12, v13, :cond_65e

    goto :goto_65f

    :cond_65e
    add-int/lit8 v7, v7, 0x1

    goto :goto_65e

    :cond_65f
    :goto_65f
    const/16 v7, -0x80

    :goto_660
    const/16 v12, -0x6e

    if-ge v7, v12, :cond_661

    const/16 v12, 0x330

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 827
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x4305d98

    if-ne v12, v13, :cond_660

    goto :goto_661

    :cond_660
    add-int/lit8 v7, v7, 0x1

    goto :goto_660

    :cond_661
    :goto_661
    const/16 v7, -0x7d

    :goto_662
    const/16 v12, -0x76

    if-ge v7, v12, :cond_663

    const/16 v12, 0x331

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 828
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x3d299d52

    if-ne v12, v13, :cond_662

    goto :goto_663

    :cond_662
    add-int/lit8 v7, v7, 0x1

    goto :goto_662

    :cond_663
    :goto_663
    const/16 v7, -0x12

    :goto_664
    const/4 v12, -0x3

    if-ge v7, v12, :cond_665

    const/16 v12, 0x332

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 829
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x1b24000a

    if-ne v12, v13, :cond_664

    goto :goto_665

    :cond_664
    add-int/lit8 v7, v7, 0x1

    goto :goto_664

    :cond_665
    :goto_665
    const/16 v7, -0x38

    :goto_666
    const/16 v12, -0x29

    if-ge v7, v12, :cond_667

    const/16 v12, 0x333

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 830
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0xce1e265

    if-ne v12, v13, :cond_666

    goto :goto_667

    :cond_666
    add-int/lit8 v7, v7, 0x1

    goto :goto_666

    :cond_667
    :goto_667
    const/16 v7, 0x36

    :goto_668
    const/16 v12, 0x3f

    if-ge v7, v12, :cond_669

    const/16 v12, 0x334

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 831
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3972e89e

    if-ne v12, v13, :cond_668

    goto :goto_669

    :cond_668
    add-int/lit8 v7, v7, 0x1

    goto :goto_668

    :cond_669
    :goto_669
    const/16 v7, 0x61

    :goto_66a
    const/16 v12, 0x6f

    if-ge v7, v12, :cond_66b

    const/16 v12, 0x335

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 832
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x47afd15f

    if-ne v12, v13, :cond_66a

    goto :goto_66b

    :cond_66a
    add-int/lit8 v7, v7, 0x1

    goto :goto_66a

    :cond_66b
    :goto_66b
    const/16 v7, -0x49

    :goto_66c
    const/16 v12, -0x43

    if-ge v7, v12, :cond_66d

    const/16 v12, 0x336

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 833
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x2f9f3d07

    if-ne v12, v13, :cond_66c

    goto :goto_66d

    :cond_66c
    add-int/lit8 v7, v7, 0x1

    goto :goto_66c

    :cond_66d
    :goto_66d
    const/16 v7, 0x6d

    :goto_66e
    const/16 v12, 0x7d

    if-ge v7, v12, :cond_66f

    const/16 v12, 0x337

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 834
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2e34af6c

    if-ne v12, v13, :cond_66e

    goto :goto_66f

    :cond_66e
    add-int/lit8 v7, v7, 0x1

    goto :goto_66e

    :cond_66f
    :goto_66f
    const/16 v7, 0x43

    :goto_670
    const/16 v12, 0x4c

    if-ge v7, v12, :cond_671

    const/16 v12, 0x338

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 835
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x71a975b9

    if-ne v12, v13, :cond_670

    goto :goto_671

    :cond_670
    add-int/lit8 v7, v7, 0x1

    goto :goto_670

    :cond_671
    :goto_671
    const/16 v7, 0x69

    :goto_672
    const/16 v12, 0x71

    if-ge v7, v12, :cond_673

    const/16 v12, 0x339

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 836
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x21d1fc1

    if-ne v12, v13, :cond_672

    goto :goto_673

    :cond_672
    add-int/lit8 v7, v7, 0x1

    goto :goto_672

    :cond_673
    :goto_673
    const/16 v7, -0x63

    :goto_674
    const/16 v12, -0x5b

    if-ge v7, v12, :cond_675

    const/16 v12, 0x33a

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 837
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x7df7276c

    if-ne v12, v13, :cond_674

    goto :goto_675

    :cond_674
    add-int/lit8 v7, v7, 0x1

    goto :goto_674

    :cond_675
    :goto_675
    const/4 v7, -0x2

    :goto_676
    if-ge v7, v5, :cond_677

    const/16 v12, 0x33b

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 838
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x42883815

    if-ne v12, v13, :cond_676

    goto :goto_677

    :cond_676
    add-int/lit8 v7, v7, 0x1

    goto :goto_676

    :cond_677
    :goto_677
    const/4 v7, 0x1

    :goto_678
    const/16 v12, 0x1d

    if-ge v7, v12, :cond_679

    const/16 v12, 0x33c

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 839
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x413ca21e

    if-ne v12, v13, :cond_678

    goto :goto_679

    :cond_678
    add-int/lit8 v7, v7, 0x1

    goto :goto_678

    :cond_679
    :goto_679
    const/16 v7, 0x33

    :goto_67a
    if-ge v7, v14, :cond_67b

    const/16 v12, 0x33d

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 840
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x315fa636

    if-ne v12, v13, :cond_67a

    goto :goto_67b

    :cond_67a
    add-int/lit8 v7, v7, 0x1

    goto :goto_67a

    :cond_67b
    :goto_67b
    const/16 v7, -0x15

    :goto_67c
    const/4 v12, 0x2

    if-ge v7, v12, :cond_67d

    const/16 v12, 0x33e

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 841
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x7f68bf54

    if-ne v12, v13, :cond_67c

    goto :goto_67d

    :cond_67c
    add-int/lit8 v7, v7, 0x1

    goto :goto_67c

    :cond_67d
    :goto_67d
    const/16 v7, 0x20

    :goto_67e
    const/16 v12, 0x29

    if-ge v7, v12, :cond_67f

    const/16 v12, 0x33f

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 842
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x45b3e44d

    if-ne v12, v13, :cond_67e

    goto :goto_67f

    :cond_67e
    add-int/lit8 v7, v7, 0x1

    goto :goto_67e

    :cond_67f
    :goto_67f
    const/16 v7, 0x2a

    :goto_680
    const/16 v12, 0x33

    if-ge v7, v12, :cond_681

    const/16 v12, 0x340

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 843
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x59592416

    if-ne v12, v13, :cond_680

    goto :goto_681

    :cond_680
    add-int/lit8 v7, v7, 0x1

    goto :goto_680

    :cond_681
    :goto_681
    const/16 v7, -0x50

    :goto_682
    const/16 v12, -0x38

    if-ge v7, v12, :cond_683

    const/16 v12, 0x341

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 844
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x18989d96

    if-ne v12, v13, :cond_682

    goto :goto_683

    :cond_682
    add-int/lit8 v7, v7, 0x1

    goto :goto_682

    :cond_683
    :goto_683
    const/16 v7, -0x48

    :goto_684
    const/16 v12, -0x2d

    if-ge v7, v12, :cond_685

    const/16 v12, 0x342

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 845
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x5707e501

    if-ne v12, v13, :cond_684

    goto :goto_685

    :cond_684
    add-int/lit8 v7, v7, 0x1

    goto :goto_684

    :cond_685
    :goto_685
    const/16 v7, -0x4b

    :goto_686
    const/16 v12, -0x37

    if-ge v7, v12, :cond_687

    const/16 v12, 0x343

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 846
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x693df195

    if-ne v12, v13, :cond_686

    goto :goto_687

    :cond_686
    add-int/lit8 v7, v7, 0x1

    goto :goto_686

    :cond_687
    :goto_687
    const/16 v7, -0x32

    :goto_688
    const/16 v12, -0x22

    if-ge v7, v12, :cond_689

    const/16 v12, 0x344

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 847
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x12aa2c89

    if-ne v12, v13, :cond_688

    goto :goto_689

    :cond_688
    add-int/lit8 v7, v7, 0x1

    goto :goto_688

    :cond_689
    :goto_689
    const/16 v7, -0x79

    :goto_68a
    const/16 v12, -0x6b

    if-ge v7, v12, :cond_68b

    const/16 v12, 0x345

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 848
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x271a80e

    if-ne v12, v13, :cond_68a

    goto :goto_68b

    :cond_68a
    add-int/lit8 v7, v7, 0x1

    goto :goto_68a

    :cond_68b
    :goto_68b
    const/16 v7, -0x80

    :goto_68c
    const/16 v12, -0x6f

    if-ge v7, v12, :cond_68d

    const/16 v12, 0x346

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 849
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0xab3ddf7

    if-ne v12, v13, :cond_68c

    goto :goto_68d

    :cond_68c
    add-int/lit8 v7, v7, 0x1

    goto :goto_68c

    :cond_68d
    :goto_68d
    const/16 v7, 0x58

    :goto_68e
    const/16 v12, 0x62

    if-ge v7, v12, :cond_68f

    const/16 v12, 0x347

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 850
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x341db2d7    # -2.9661778E7f

    if-ne v12, v13, :cond_68e

    goto :goto_68f

    :cond_68e
    add-int/lit8 v7, v7, 0x1

    goto :goto_68e

    :cond_68f
    :goto_68f
    const/16 v7, -0x7c

    :goto_690
    const/16 v12, -0x6a

    if-ge v7, v12, :cond_691

    const/16 v12, 0x348

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 851
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x39dfcb95

    if-ne v12, v13, :cond_690

    goto :goto_691

    :cond_690
    add-int/lit8 v7, v7, 0x1

    goto :goto_690

    :cond_691
    :goto_691
    const/4 v7, -0x4

    :goto_692
    const/16 v12, 0x13

    if-ge v7, v12, :cond_693

    const/16 v12, 0x349

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 852
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x65a60be8

    if-ne v12, v13, :cond_692

    goto :goto_693

    :cond_692
    add-int/lit8 v7, v7, 0x1

    goto :goto_692

    :cond_693
    :goto_693
    const/16 v7, -0x59

    :goto_694
    const/16 v12, -0x50

    if-ge v7, v12, :cond_695

    const/16 v12, 0x34a

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 853
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0xc0a50fd

    if-ne v12, v13, :cond_694

    goto :goto_695

    :cond_694
    add-int/lit8 v7, v7, 0x1

    goto :goto_694

    :cond_695
    :goto_695
    const/16 v7, 0x1a

    :goto_696
    const/16 v12, 0x29

    if-ge v7, v12, :cond_697

    const/16 v12, 0x34b

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 854
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x5e80809e

    if-ne v12, v13, :cond_696

    goto :goto_697

    :cond_696
    add-int/lit8 v7, v7, 0x1

    goto :goto_696

    :cond_697
    :goto_697
    const/16 v7, 0x6b

    :goto_698
    const/16 v12, 0x7a

    if-ge v7, v12, :cond_699

    const/16 v12, 0x34c

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 855
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x19efee2

    if-ne v12, v13, :cond_698

    goto :goto_699

    :cond_698
    add-int/lit8 v7, v7, 0x1

    goto :goto_698

    :cond_699
    :goto_699
    const/16 v7, -0x21

    :goto_69a
    const/16 v12, -0x10

    if-ge v7, v12, :cond_69b

    const/16 v12, 0x34d

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 856
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x7124dd8c

    if-ne v12, v13, :cond_69a

    goto :goto_69b

    :cond_69a
    add-int/lit8 v7, v7, 0x1

    goto :goto_69a

    :cond_69b
    :goto_69b
    const/16 v7, -0x38

    :goto_69c
    const/16 v12, -0x1e

    if-ge v7, v12, :cond_69d

    const/16 v12, 0x34e

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 857
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x64f50b48

    if-ne v12, v13, :cond_69c

    goto :goto_69d

    :cond_69c
    add-int/lit8 v7, v7, 0x1

    goto :goto_69c

    :cond_69d
    :goto_69d
    const/16 v7, 0x13

    :goto_69e
    const/16 v12, 0x24

    if-ge v7, v12, :cond_69f

    const/16 v12, 0x34f

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 858
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x178097cd

    if-ne v12, v13, :cond_69e

    goto :goto_69f

    :cond_69e
    add-int/lit8 v7, v7, 0x1

    goto :goto_69e

    :cond_69f
    :goto_69f
    const/16 v7, -0x74

    :goto_6a0
    const/16 v12, -0x6b

    if-ge v7, v12, :cond_6a1

    const/16 v12, 0x350

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 859
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x4fcc4542

    if-ne v12, v13, :cond_6a0

    goto :goto_6a1

    :cond_6a0
    add-int/lit8 v7, v7, 0x1

    goto :goto_6a0

    :cond_6a1
    :goto_6a1
    const/16 v7, -0x18

    :goto_6a2
    const/4 v12, -0x1

    if-ge v7, v12, :cond_6a3

    const/16 v12, 0x351

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 860
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x3e3ce44f

    if-ne v12, v13, :cond_6a2

    goto :goto_6a3

    :cond_6a2
    add-int/lit8 v7, v7, 0x1

    goto :goto_6a2

    :cond_6a3
    :goto_6a3
    const/16 v7, 0x63

    :goto_6a4
    const/16 v12, 0x6e

    if-ge v7, v12, :cond_6a5

    const/16 v12, 0x352

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 861
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x6b8028cf

    if-ne v12, v13, :cond_6a4

    goto :goto_6a5

    :cond_6a4
    add-int/lit8 v7, v7, 0x1

    goto :goto_6a4

    :cond_6a5
    :goto_6a5
    const/16 v7, 0x5c

    :goto_6a6
    const/16 v12, 0x72

    if-ge v7, v12, :cond_6a7

    const/16 v12, 0x353

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 862
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x65984d90

    if-ne v12, v13, :cond_6a6

    goto :goto_6a7

    :cond_6a6
    add-int/lit8 v7, v7, 0x1

    goto :goto_6a6

    :cond_6a7
    :goto_6a7
    const/4 v7, -0x5

    :goto_6a8
    const/16 v12, 0x12

    if-ge v7, v12, :cond_6a9

    const/16 v12, 0x354

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 863
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3a015509

    if-ne v12, v13, :cond_6a8

    goto :goto_6a9

    :cond_6a8
    add-int/lit8 v7, v7, 0x1

    goto :goto_6a8

    :cond_6a9
    :goto_6a9
    const/16 v7, 0x25

    :goto_6aa
    const/16 v12, 0x44

    if-ge v7, v12, :cond_6ab

    const/16 v12, 0x355

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 864
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x61715609

    if-ne v12, v13, :cond_6aa

    goto :goto_6ab

    :cond_6aa
    add-int/lit8 v7, v7, 0x1

    goto :goto_6aa

    :cond_6ab
    :goto_6ab
    const/16 v7, -0x31

    :goto_6ac
    const/16 v12, -0x1d

    if-ge v7, v12, :cond_6ad

    const/16 v12, 0x356

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 865
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x4ae82804

    if-ne v12, v13, :cond_6ac

    goto :goto_6ad

    :cond_6ac
    add-int/lit8 v7, v7, 0x1

    goto :goto_6ac

    :cond_6ad
    :goto_6ad
    const/16 v7, 0x14

    :goto_6ae
    const/16 v12, 0x31

    if-ge v7, v12, :cond_6af

    const/16 v12, 0x357

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 866
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0xda0db7f

    if-ne v12, v13, :cond_6ae

    goto :goto_6af

    :cond_6ae
    add-int/lit8 v7, v7, 0x1

    goto :goto_6ae

    :cond_6af
    :goto_6af
    const/16 v7, 0x6b

    :goto_6b0
    const/16 v12, 0x7a

    if-ge v7, v12, :cond_6b1

    const/16 v12, 0x358

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 867
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x66df21d4

    if-ne v12, v13, :cond_6b0

    goto :goto_6b1

    :cond_6b0
    add-int/lit8 v7, v7, 0x1

    goto :goto_6b0

    :cond_6b1
    :goto_6b1
    const/16 v7, 0x70

    :goto_6b2
    if-ge v7, v2, :cond_6b3

    const/16 v12, 0x359

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 868
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x17760f07

    if-ne v12, v13, :cond_6b2

    goto :goto_6b3

    :cond_6b2
    add-int/lit8 v7, v7, 0x1

    goto :goto_6b2

    :cond_6b3
    :goto_6b3
    const/16 v7, -0x1d

    :goto_6b4
    const/16 v12, -0x16

    if-ge v7, v12, :cond_6b5

    const/16 v12, 0x35a

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 869
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2353cfb2

    if-ne v12, v13, :cond_6b4

    goto :goto_6b5

    :cond_6b4
    add-int/lit8 v7, v7, 0x1

    goto :goto_6b4

    :cond_6b5
    :goto_6b5
    const/16 v7, 0x3b

    :goto_6b6
    const/16 v12, 0x48

    if-ge v7, v12, :cond_6b7

    const/16 v12, 0x35b

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 870
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x17b1bb8

    if-ne v12, v13, :cond_6b6

    goto :goto_6b7

    :cond_6b6
    add-int/lit8 v7, v7, 0x1

    goto :goto_6b6

    :cond_6b7
    :goto_6b7
    const/16 v7, 0x57

    :goto_6b8
    const/16 v12, 0x61

    if-ge v7, v12, :cond_6b9

    const/16 v12, 0x35c

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 871
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x512fc3f3

    if-ne v12, v13, :cond_6b8

    goto :goto_6b9

    :cond_6b8
    add-int/lit8 v7, v7, 0x1

    goto :goto_6b8

    :cond_6b9
    :goto_6b9
    const/16 v7, -0x14

    :goto_6ba
    const/4 v12, -0x5

    if-ge v7, v12, :cond_6bb

    const/16 v12, 0x35d

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 872
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x1395c800

    if-ne v12, v13, :cond_6ba

    goto :goto_6bb

    :cond_6ba
    add-int/lit8 v7, v7, 0x1

    goto :goto_6ba

    :cond_6bb
    :goto_6bb
    const/4 v7, 0x1

    :goto_6bc
    const/16 v12, 0x10

    if-ge v7, v12, :cond_6bd

    const/16 v12, 0x35e

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 873
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3dd45983

    if-ne v12, v13, :cond_6bc

    goto :goto_6bd

    :cond_6bc
    add-int/lit8 v7, v7, 0x1

    goto :goto_6bc

    :cond_6bd
    :goto_6bd
    const/16 v7, -0x80

    :goto_6be
    const/16 v12, -0x7c

    if-ge v7, v12, :cond_6bf

    const/16 v12, 0x35f

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 874
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x2caff60

    if-ne v12, v13, :cond_6be

    goto :goto_6bf

    :cond_6be
    add-int/lit8 v7, v7, 0x1

    goto :goto_6be

    :cond_6bf
    :goto_6bf
    const/16 v7, 0x62

    :goto_6c0
    const/16 v12, 0x6e

    if-ge v7, v12, :cond_6c1

    const/16 v12, 0x360

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 875
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x64437ef9

    if-ne v12, v13, :cond_6c0

    goto :goto_6c1

    :cond_6c0
    add-int/lit8 v7, v7, 0x1

    goto :goto_6c0

    :cond_6c1
    :goto_6c1
    const/16 v7, -0x10

    :goto_6c2
    const/16 v12, 0x8

    if-ge v7, v12, :cond_6c3

    const/16 v12, 0x361

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 876
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x64ae485c

    if-ne v12, v13, :cond_6c2

    goto :goto_6c3

    :cond_6c2
    add-int/lit8 v7, v7, 0x1

    goto :goto_6c2

    :cond_6c3
    :goto_6c3
    const/16 v7, 0x26

    :goto_6c4
    const/16 v12, 0x2e

    if-ge v7, v12, :cond_6c5

    const/16 v12, 0x362

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 877
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x4e992ad7    # 1.2848608E9f

    if-ne v12, v13, :cond_6c4

    goto :goto_6c5

    :cond_6c4
    add-int/lit8 v7, v7, 0x1

    goto :goto_6c4

    :cond_6c5
    :goto_6c5
    const/16 v7, -0x54

    :goto_6c6
    const/16 v12, -0x43

    if-ge v7, v12, :cond_6c7

    const/16 v12, 0x363

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 878
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x186faf85

    if-ne v12, v13, :cond_6c6

    goto :goto_6c7

    :cond_6c6
    add-int/lit8 v7, v7, 0x1

    goto :goto_6c6

    :cond_6c7
    :goto_6c7
    const/16 v7, -0x34

    :goto_6c8
    const/16 v12, -0x1f

    if-ge v7, v12, :cond_6c9

    const/16 v12, 0x364

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 879
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x74a4a818    # -4.2244E-32f

    if-ne v12, v13, :cond_6c8

    goto :goto_6c9

    :cond_6c8
    add-int/lit8 v7, v7, 0x1

    goto :goto_6c8

    :cond_6c9
    :goto_6c9
    const/16 v7, 0x5d

    :goto_6ca
    const/16 v12, 0x74

    if-ge v7, v12, :cond_6cb

    const/16 v12, 0x365

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 880
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x542038ab

    if-ne v12, v13, :cond_6ca

    goto :goto_6cb

    :cond_6ca
    add-int/lit8 v7, v7, 0x1

    goto :goto_6ca

    :cond_6cb
    :goto_6cb
    const/16 v7, -0x2d

    :goto_6cc
    const/16 v12, -0x1f

    if-ge v7, v12, :cond_6cd

    const/16 v12, 0x366

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 881
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x1ac3cfc4

    if-ne v12, v13, :cond_6cc

    goto :goto_6cd

    :cond_6cc
    add-int/lit8 v7, v7, 0x1

    goto :goto_6cc

    :cond_6cd
    :goto_6cd
    const/16 v7, 0x56

    :goto_6ce
    const/16 v12, 0x67

    if-ge v7, v12, :cond_6cf

    const/16 v12, 0x367

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 882
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x6e31c3b4

    if-ne v12, v13, :cond_6ce

    goto :goto_6cf

    :cond_6ce
    add-int/lit8 v7, v7, 0x1

    goto :goto_6ce

    :cond_6cf
    :goto_6cf
    const/16 v7, -0x28

    :goto_6d0
    const/16 v12, -0x1e

    if-ge v7, v12, :cond_6d1

    const/16 v12, 0x368

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 883
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x5ddea910

    if-ne v12, v13, :cond_6d0

    goto :goto_6d1

    :cond_6d0
    add-int/lit8 v7, v7, 0x1

    goto :goto_6d0

    :cond_6d1
    :goto_6d1
    const/16 v7, -0x1d

    :goto_6d2
    const/16 v12, -0xc

    if-ge v7, v12, :cond_6d3

    const/16 v12, 0x369

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 884
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x2286855c

    if-ne v12, v13, :cond_6d2

    goto :goto_6d3

    :cond_6d2
    add-int/lit8 v7, v7, 0x1

    goto :goto_6d2

    :cond_6d3
    :goto_6d3
    const/16 v7, 0x1d

    :goto_6d4
    const/16 v12, 0x30

    if-ge v7, v12, :cond_6d5

    const/16 v12, 0x36a

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 885
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x7767e84a

    if-ne v12, v13, :cond_6d4

    goto :goto_6d5

    :cond_6d4
    add-int/lit8 v7, v7, 0x1

    goto :goto_6d4

    :cond_6d5
    :goto_6d5
    const/16 v7, 0x4f

    :goto_6d6
    const/16 v12, 0x64

    if-ge v7, v12, :cond_6d7

    const/16 v12, 0x36b

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 886
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3e3c181b

    if-ne v12, v13, :cond_6d6

    goto :goto_6d7

    :cond_6d6
    add-int/lit8 v7, v7, 0x1

    goto :goto_6d6

    :cond_6d7
    :goto_6d7
    const/16 v7, -0x7b

    :goto_6d8
    const/16 v12, -0x6c

    if-ge v7, v12, :cond_6d9

    const/16 v12, 0x36c

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 887
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x6f8155e8

    if-ne v12, v13, :cond_6d8

    goto :goto_6d9

    :cond_6d8
    add-int/lit8 v7, v7, 0x1

    goto :goto_6d8

    :cond_6d9
    :goto_6d9
    const/16 v7, -0x5b

    :goto_6da
    const/16 v12, -0x51

    if-ge v7, v12, :cond_6db

    const/16 v12, 0x36d

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 888
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x5b4044cf

    if-ne v12, v13, :cond_6da

    goto :goto_6db

    :cond_6da
    add-int/lit8 v7, v7, 0x1

    goto :goto_6da

    :cond_6db
    :goto_6db
    const/16 v7, -0x16

    :goto_6dc
    const/4 v12, 0x5

    if-ge v7, v12, :cond_6dd

    const/16 v12, 0x36e

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 889
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x57f82fff

    if-ne v12, v13, :cond_6dc

    goto :goto_6dd

    :cond_6dc
    add-int/lit8 v7, v7, 0x1

    goto :goto_6dc

    :cond_6dd
    :goto_6dd
    const/16 v7, 0x53

    :goto_6de
    const/16 v12, 0x5c

    if-ge v7, v12, :cond_6df

    const/16 v12, 0x36f

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 890
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x6e901cd6

    if-ne v12, v13, :cond_6de

    goto :goto_6df

    :cond_6de
    add-int/lit8 v7, v7, 0x1

    goto :goto_6de

    :cond_6df
    :goto_6df
    const/16 v7, -0x78

    :goto_6e0
    const/16 v12, -0x72

    if-ge v7, v12, :cond_6e1

    const/16 v12, 0x370

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 891
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x75e44a63

    if-ne v12, v13, :cond_6e0

    goto :goto_6e1

    :cond_6e0
    add-int/lit8 v7, v7, 0x1

    goto :goto_6e0

    :cond_6e1
    :goto_6e1
    const/16 v7, -0x80

    :goto_6e2
    const/16 v12, -0x71

    if-ge v7, v12, :cond_6e3

    const/16 v12, 0x371

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 892
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x58aee3db

    if-ne v12, v13, :cond_6e2

    goto :goto_6e3

    :cond_6e2
    add-int/lit8 v7, v7, 0x1

    goto :goto_6e2

    :cond_6e3
    :goto_6e3
    const/16 v7, -0x4b

    :goto_6e4
    const/16 v12, -0x3f

    if-ge v7, v12, :cond_6e5

    const/16 v12, 0x372

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 893
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x6d9c7a57

    if-ne v12, v13, :cond_6e4

    goto :goto_6e5

    :cond_6e4
    add-int/lit8 v7, v7, 0x1

    goto :goto_6e4

    :cond_6e5
    :goto_6e5
    const/16 v7, -0x76

    :goto_6e6
    const/16 v12, -0x69

    if-ge v7, v12, :cond_6e7

    const/16 v12, 0x373

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 894
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x331f660c

    if-ne v12, v13, :cond_6e6

    goto :goto_6e7

    :cond_6e6
    add-int/lit8 v7, v7, 0x1

    goto :goto_6e6

    :cond_6e7
    :goto_6e7
    const/16 v7, 0x29

    :goto_6e8
    const/16 v12, 0x35

    if-ge v7, v12, :cond_6e9

    const/16 v12, 0x374

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 895
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x72c2d450

    if-ne v12, v13, :cond_6e8

    goto :goto_6e9

    :cond_6e8
    add-int/lit8 v7, v7, 0x1

    goto :goto_6e8

    :cond_6e9
    :goto_6e9
    const/16 v7, 0x7e

    :goto_6ea
    if-ge v7, v2, :cond_6eb

    const/16 v12, 0x375

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 896
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x11928b4a

    if-ne v12, v13, :cond_6ea

    goto :goto_6eb

    :cond_6ea
    add-int/lit8 v7, v7, 0x1

    goto :goto_6ea

    :cond_6eb
    :goto_6eb
    const/16 v7, 0x37

    :goto_6ec
    const/16 v12, 0x4c

    if-ge v7, v12, :cond_6ed

    const/16 v12, 0x376

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 897
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x23689f74

    if-ne v12, v13, :cond_6ec

    goto :goto_6ed

    :cond_6ec
    add-int/lit8 v7, v7, 0x1

    goto :goto_6ec

    :cond_6ed
    :goto_6ed
    const/16 v7, 0x5c

    :goto_6ee
    const/16 v12, 0x6b

    if-ge v7, v12, :cond_6ef

    const/16 v12, 0x377

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 898
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x5e8b51c0

    if-ne v12, v13, :cond_6ee

    goto :goto_6ef

    :cond_6ee
    add-int/lit8 v7, v7, 0x1

    goto :goto_6ee

    :cond_6ef
    :goto_6ef
    const/16 v7, 0x45

    :goto_6f0
    const/16 v12, 0x58

    if-ge v7, v12, :cond_6f1

    const/16 v12, 0x378

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 899
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x1874aa4

    if-ne v12, v13, :cond_6f0

    goto :goto_6f1

    :cond_6f0
    add-int/lit8 v7, v7, 0x1

    goto :goto_6f0

    :cond_6f1
    :goto_6f1
    const/16 v7, 0x7b

    :goto_6f2
    if-ge v7, v2, :cond_6f3

    const/16 v12, 0x379

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 900
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x70f087c3

    if-ne v12, v13, :cond_6f2

    goto :goto_6f3

    :cond_6f2
    add-int/lit8 v7, v7, 0x1

    goto :goto_6f2

    :cond_6f3
    :goto_6f3
    const/16 v7, -0x54

    :goto_6f4
    const/16 v12, -0x43

    if-ge v7, v12, :cond_6f5

    const/16 v12, 0x37a

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 901
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x27be65e9

    if-ne v12, v13, :cond_6f4

    goto :goto_6f5

    :cond_6f4
    add-int/lit8 v7, v7, 0x1

    goto :goto_6f4

    :cond_6f5
    :goto_6f5
    const/16 v7, -0x46

    :goto_6f6
    const/16 v12, -0x3f

    if-ge v7, v12, :cond_6f7

    const/16 v12, 0x37b

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 902
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x4e2a0832

    if-ne v12, v13, :cond_6f6

    goto :goto_6f7

    :cond_6f6
    add-int/lit8 v7, v7, 0x1

    goto :goto_6f6

    :cond_6f7
    :goto_6f7
    const/16 v7, -0x29

    :goto_6f8
    const/16 v12, -0x19

    if-ge v7, v12, :cond_6f9

    const/16 v12, 0x37c

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 903
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x53475d39

    if-ne v12, v13, :cond_6f8

    goto :goto_6f9

    :cond_6f8
    add-int/lit8 v7, v7, 0x1

    goto :goto_6f8

    :cond_6f9
    :goto_6f9
    const/16 v7, 0x17

    :goto_6fa
    const/16 v12, 0x1c

    if-ge v7, v12, :cond_6fb

    const/16 v12, 0x37d

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 904
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2c5a0833

    if-ne v12, v13, :cond_6fa

    goto :goto_6fb

    :cond_6fa
    add-int/lit8 v7, v7, 0x1

    goto :goto_6fa

    :cond_6fb
    :goto_6fb
    const/16 v7, -0x1d

    :goto_6fc
    const/4 v12, -0x4

    if-ge v7, v12, :cond_6fd

    const/16 v12, 0x37e

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 905
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x769539c5

    if-ne v12, v13, :cond_6fc

    goto :goto_6fd

    :cond_6fc
    add-int/lit8 v7, v7, 0x1

    goto :goto_6fc

    :cond_6fd
    :goto_6fd
    const/16 v7, -0x43

    :goto_6fe
    const/16 v12, -0x31

    if-ge v7, v12, :cond_6ff

    const/16 v12, 0x37f

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 906
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x6c228b3b

    if-ne v12, v13, :cond_6fe

    goto :goto_6ff

    :cond_6fe
    add-int/lit8 v7, v7, 0x1

    goto :goto_6fe

    :cond_6ff
    :goto_6ff
    const/16 v7, 0x67

    :goto_700
    if-ge v7, v2, :cond_701

    const/16 v12, 0x380

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 907
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x6c16ee89

    if-ne v12, v13, :cond_700

    goto :goto_701

    :cond_700
    add-int/lit8 v7, v7, 0x1

    goto :goto_700

    :cond_701
    :goto_701
    const/16 v7, 0x11

    :goto_702
    const/16 v12, 0x1c

    if-ge v7, v12, :cond_703

    const/16 v12, 0x381

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 908
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0xf0ee4fa

    if-ne v12, v13, :cond_702

    goto :goto_703

    :cond_702
    add-int/lit8 v7, v7, 0x1

    goto :goto_702

    :cond_703
    :goto_703
    const/16 v7, -0x24

    :goto_704
    const/16 v12, -0x17

    if-ge v7, v12, :cond_705

    const/16 v12, 0x382

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 909
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x16f610ef

    if-ne v12, v13, :cond_704

    goto :goto_705

    :cond_704
    add-int/lit8 v7, v7, 0x1

    goto :goto_704

    :cond_705
    :goto_705
    const/16 v7, 0x67

    :goto_706
    if-ge v7, v2, :cond_707

    const/16 v12, 0x383

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 910
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x4902d5d3

    if-ne v12, v13, :cond_706

    goto :goto_707

    :cond_706
    add-int/lit8 v7, v7, 0x1

    goto :goto_706

    :cond_707
    :goto_707
    const/16 v7, 0x47

    :goto_708
    const/16 v12, 0x48

    if-ge v7, v12, :cond_709

    const/16 v12, 0x384

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 911
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x7c140ee8

    if-ne v12, v13, :cond_708

    goto :goto_709

    :cond_708
    add-int/lit8 v7, v7, 0x1

    goto :goto_708

    :cond_709
    :goto_709
    const/16 v7, -0x17

    :goto_70a
    const/4 v12, -0x7

    if-ge v7, v12, :cond_70b

    const/16 v12, 0x385

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 912
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0xfd68b85

    if-ne v12, v13, :cond_70a

    goto :goto_70b

    :cond_70a
    add-int/lit8 v7, v7, 0x1

    goto :goto_70a

    :cond_70b
    :goto_70b
    const/16 v7, 0x56

    :goto_70c
    const/16 v12, 0x5d

    if-ge v7, v12, :cond_70d

    const/16 v12, 0x386

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 913
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x4df8e941

    if-ne v12, v13, :cond_70c

    goto :goto_70d

    :cond_70c
    add-int/lit8 v7, v7, 0x1

    goto :goto_70c

    :cond_70d
    :goto_70d
    const/16 v7, 0x1a

    :goto_70e
    const/16 v12, 0x28

    if-ge v7, v12, :cond_70f

    const/16 v12, 0x387

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 914
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x6634225e

    if-ne v12, v13, :cond_70e

    goto :goto_70f

    :cond_70e
    add-int/lit8 v7, v7, 0x1

    goto :goto_70e

    :cond_70f
    :goto_70f
    const/16 v7, 0x3c

    :goto_710
    const/16 v12, 0x47

    if-ge v7, v12, :cond_711

    const/16 v12, 0x388

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 915
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x7eabdc65

    if-ne v12, v13, :cond_710

    goto :goto_711

    :cond_710
    add-int/lit8 v7, v7, 0x1

    goto :goto_710

    :cond_711
    :goto_711
    const/16 v7, -0x80

    :goto_712
    const/16 v12, -0x6c

    if-ge v7, v12, :cond_713

    const/16 v12, 0x389

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 916
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x5157e80f

    if-ne v12, v13, :cond_712

    goto :goto_713

    :cond_712
    add-int/lit8 v7, v7, 0x1

    goto :goto_712

    :cond_713
    :goto_713
    const/16 v7, -0x57

    :goto_714
    const/16 v12, -0x55

    if-ge v7, v12, :cond_715

    const/16 v12, 0x38a

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 917
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x56b43f76

    if-ne v12, v13, :cond_714

    goto :goto_715

    :cond_714
    add-int/lit8 v7, v7, 0x1

    goto :goto_714

    :cond_715
    :goto_715
    const/16 v7, 0x51

    if-ge v15, v7, :cond_717

    const/16 v7, 0x38b

    int-to-byte v12, v15

    aput-byte v12, v0, v7

    .line 918
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v7

    const v12, -0x33c17a98    # -4.9943968E7f

    if-ne v7, v12, :cond_716

    goto :goto_716

    :cond_716
    add-int/lit8 v15, v15, 0x1

    goto :goto_715

    :cond_717
    :goto_716
    const/16 v7, -0x42

    :goto_717
    const/16 v12, -0x3a

    if-ge v7, v12, :cond_719

    const/16 v12, 0x38c

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 919
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x4a74fe36    # 4013965.5f

    if-ne v12, v13, :cond_718

    goto :goto_718

    :cond_718
    add-int/lit8 v7, v7, 0x1

    goto :goto_717

    :cond_719
    :goto_718
    const/16 v7, -0x5a

    :goto_719
    const/16 v12, -0x3c

    if-ge v7, v12, :cond_71b

    const/16 v12, 0x38d

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 920
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x6daab097

    if-ne v12, v13, :cond_71a

    goto :goto_71a

    :cond_71a
    add-int/lit8 v7, v7, 0x1

    goto :goto_719

    :cond_71b
    :goto_71a
    const/16 v7, -0x51

    :goto_71b
    const/16 v12, -0x3d

    if-ge v7, v12, :cond_71d

    const/16 v12, 0x38e

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 921
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x3f5e6f39

    if-ne v12, v13, :cond_71c

    goto :goto_71c

    :cond_71c
    add-int/lit8 v7, v7, 0x1

    goto :goto_71b

    :cond_71d
    :goto_71c
    const/16 v7, -0x55

    :goto_71d
    const/16 v12, -0x48

    if-ge v7, v12, :cond_71f

    const/16 v12, 0x38f

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 922
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x1077a761

    if-ne v12, v13, :cond_71e

    goto :goto_71e

    :cond_71e
    add-int/lit8 v7, v7, 0x1

    goto :goto_71d

    :cond_71f
    :goto_71e
    const/4 v7, 0x3

    :goto_71f
    const/16 v12, 0x1f

    if-ge v7, v12, :cond_721

    const/16 v12, 0x390

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 923
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x2a458c8

    if-ne v12, v13, :cond_720

    goto :goto_720

    :cond_720
    add-int/lit8 v7, v7, 0x1

    goto :goto_71f

    :cond_721
    :goto_720
    const/16 v7, -0x74

    :goto_721
    const/16 v12, -0x65

    if-ge v7, v12, :cond_723

    const/16 v12, 0x391

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 924
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0xe98af94

    if-ne v12, v13, :cond_722

    goto :goto_722

    :cond_722
    add-int/lit8 v7, v7, 0x1

    goto :goto_721

    :cond_723
    :goto_722
    const/16 v7, -0x67

    :goto_723
    if-ge v7, v1, :cond_725

    const/16 v12, 0x392

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 925
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x4dae3a1a

    if-ne v12, v13, :cond_724

    goto :goto_724

    :cond_724
    add-int/lit8 v7, v7, 0x1

    goto :goto_723

    :cond_725
    :goto_724
    const/16 v7, -0x48

    :goto_725
    const/16 v12, -0x33

    if-ge v7, v12, :cond_727

    const/16 v12, 0x393

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 926
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2d3731c7

    if-ne v12, v13, :cond_726

    goto :goto_726

    :cond_726
    add-int/lit8 v7, v7, 0x1

    goto :goto_725

    :cond_727
    :goto_726
    const/16 v7, -0x75

    :goto_727
    const/16 v12, -0x5c

    if-ge v7, v12, :cond_729

    const/16 v12, 0x394

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 927
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x4f68e761

    if-ne v12, v13, :cond_728

    goto :goto_728

    :cond_728
    add-int/lit8 v7, v7, 0x1

    goto :goto_727

    :cond_729
    :goto_728
    const/16 v7, -0x4b

    :goto_729
    const/16 v12, -0x35

    if-ge v7, v12, :cond_72b

    const/16 v12, 0x395

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 928
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x7e4feb24

    if-ne v12, v13, :cond_72a

    goto :goto_72a

    :cond_72a
    add-int/lit8 v7, v7, 0x1

    goto :goto_729

    :cond_72b
    :goto_72a
    const/16 v7, -0x6a

    :goto_72b
    const/16 v12, -0x60

    if-ge v7, v12, :cond_72d

    const/16 v12, 0x396

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 929
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x729581e9

    if-ne v12, v13, :cond_72c

    goto :goto_72c

    :cond_72c
    add-int/lit8 v7, v7, 0x1

    goto :goto_72b

    :cond_72d
    :goto_72c
    const/16 v7, -0x37

    :goto_72d
    const/16 v12, -0x2f

    if-ge v7, v12, :cond_72f

    const/16 v12, 0x397

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 930
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x6c111aa

    if-ne v12, v13, :cond_72e

    goto :goto_72e

    :cond_72e
    add-int/lit8 v7, v7, 0x1

    goto :goto_72d

    :cond_72f
    :goto_72e
    const/16 v7, -0x28

    :goto_72f
    const/16 v12, -0x1c

    if-ge v7, v12, :cond_731

    const/16 v12, 0x398

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 931
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x598827af

    if-ne v12, v13, :cond_730

    goto :goto_730

    :cond_730
    add-int/lit8 v7, v7, 0x1

    goto :goto_72f

    :cond_731
    :goto_730
    const/16 v7, 0x56

    :goto_731
    const/16 v12, 0x6d

    if-ge v7, v12, :cond_733

    const/16 v12, 0x399

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 932
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0xed60850

    if-ne v12, v13, :cond_732

    goto :goto_732

    :cond_732
    add-int/lit8 v7, v7, 0x1

    goto :goto_731

    :cond_733
    :goto_732
    const/16 v7, 0x6c

    :goto_733
    const/16 v12, 0x77

    if-ge v7, v12, :cond_735

    const/16 v12, 0x39a

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 933
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0xd34d4b7

    if-ne v12, v13, :cond_734

    goto :goto_734

    :cond_734
    add-int/lit8 v7, v7, 0x1

    goto :goto_733

    :cond_735
    :goto_734
    const/16 v7, 0x1a

    :goto_735
    const/16 v12, 0x22

    if-ge v7, v12, :cond_737

    const/16 v12, 0x39b

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 934
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x77bab995

    if-ne v12, v13, :cond_736

    goto :goto_736

    :cond_736
    add-int/lit8 v7, v7, 0x1

    goto :goto_735

    :cond_737
    :goto_736
    const/16 v7, 0x5d

    :goto_737
    const/16 v12, 0x68

    if-ge v7, v12, :cond_739

    const/16 v12, 0x39c

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 935
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x499b26c0    # 1271000.0f

    if-ne v12, v13, :cond_738

    goto :goto_738

    :cond_738
    add-int/lit8 v7, v7, 0x1

    goto :goto_737

    :cond_739
    :goto_738
    const/16 v7, -0xe

    :goto_739
    const/16 v12, -0xc

    if-ge v7, v12, :cond_73b

    const/16 v12, 0x39d

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 936
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x33544413

    if-ne v12, v13, :cond_73a

    goto :goto_73a

    :cond_73a
    add-int/lit8 v7, v7, 0x1

    goto :goto_739

    :cond_73b
    :goto_73a
    const/16 v7, -0x75

    :goto_73b
    const/16 v12, -0x6c

    if-ge v7, v12, :cond_73d

    const/16 v12, 0x39e

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 937
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x6cfc07d8

    if-ne v12, v13, :cond_73c

    goto :goto_73c

    :cond_73c
    add-int/lit8 v7, v7, 0x1

    goto :goto_73b

    :cond_73d
    :goto_73c
    const/16 v7, -0x35

    :goto_73d
    const/16 v12, -0x28

    if-ge v7, v12, :cond_73f

    const/16 v12, 0x39f

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 938
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3fc02916

    if-ne v12, v13, :cond_73e

    goto :goto_73e

    :cond_73e
    add-int/lit8 v7, v7, 0x1

    goto :goto_73d

    :cond_73f
    :goto_73e
    const/16 v7, -0x33

    :goto_73f
    const/16 v12, -0x29

    if-ge v7, v12, :cond_741

    const/16 v12, 0x3a0

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 939
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x2261a084

    if-ne v12, v13, :cond_740

    goto :goto_740

    :cond_740
    add-int/lit8 v7, v7, 0x1

    goto :goto_73f

    :cond_741
    :goto_740
    const/16 v7, -0x22

    :goto_741
    const/16 v12, -0xb

    if-ge v7, v12, :cond_743

    const/16 v12, 0x3a1

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 940
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x3411cdeb    # -3.1220778E7f

    if-ne v12, v13, :cond_742

    goto :goto_742

    :cond_742
    add-int/lit8 v7, v7, 0x1

    goto :goto_741

    :cond_743
    :goto_742
    const/16 v7, 0x2a

    :goto_743
    const/16 v12, 0x39

    if-ge v7, v12, :cond_745

    const/16 v12, 0x3a2

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 941
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x6abde8dd

    if-ne v12, v13, :cond_744

    goto :goto_744

    :cond_744
    add-int/lit8 v7, v7, 0x1

    goto :goto_743

    :cond_745
    :goto_744
    const/16 v7, 0x6c

    :goto_745
    if-ge v7, v2, :cond_747

    const/16 v12, 0x3a3

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 942
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0xfa7f76c

    if-ne v12, v13, :cond_746

    goto :goto_746

    :cond_746
    add-int/lit8 v7, v7, 0x1

    goto :goto_745

    :cond_747
    :goto_746
    const/16 v7, 0x2f

    :goto_747
    const/16 v12, 0x40

    if-ge v7, v12, :cond_749

    const/16 v12, 0x3a4

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 943
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3eb85349

    if-ne v12, v13, :cond_748

    goto :goto_748

    :cond_748
    add-int/lit8 v7, v7, 0x1

    goto :goto_747

    :cond_749
    :goto_748
    const/16 v7, 0x60

    :goto_749
    const/16 v12, 0x6f

    if-ge v7, v12, :cond_74b

    const/16 v12, 0x3a5

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 944
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2b6a951d

    if-ne v12, v13, :cond_74a

    goto :goto_74a

    :cond_74a
    add-int/lit8 v7, v7, 0x1

    goto :goto_749

    :cond_74b
    :goto_74a
    const/16 v7, -0xc

    :goto_74b
    const/4 v12, 0x4

    if-ge v7, v12, :cond_74d

    const/16 v12, 0x3a6

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 945
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2b6a951d

    if-ne v12, v13, :cond_74c

    goto :goto_74c

    :cond_74c
    add-int/lit8 v7, v7, 0x1

    goto :goto_74b

    :cond_74d
    :goto_74c
    const/16 v7, 0x5b

    :goto_74d
    const/16 v12, 0x70

    if-ge v7, v12, :cond_74f

    const/16 v12, 0x3a7

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 946
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x360f6451

    if-ne v12, v13, :cond_74e

    goto :goto_74e

    :cond_74e
    add-int/lit8 v7, v7, 0x1

    goto :goto_74d

    :cond_74f
    :goto_74e
    const/16 v7, -0x39

    :goto_74f
    const/16 v12, -0x2a

    if-ge v7, v12, :cond_751

    const/16 v12, 0x3a8

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 947
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x627fe77c

    if-ne v12, v13, :cond_750

    goto :goto_750

    :cond_750
    add-int/lit8 v7, v7, 0x1

    goto :goto_74f

    :cond_751
    :goto_750
    const/16 v7, -0x3d

    :goto_751
    const/16 v12, -0x35

    if-ge v7, v12, :cond_753

    const/16 v12, 0x3a9

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 948
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2b62704e

    if-ne v12, v13, :cond_752

    goto :goto_752

    :cond_752
    add-int/lit8 v7, v7, 0x1

    goto :goto_751

    :cond_753
    :goto_752
    const/16 v7, 0x2b

    :goto_753
    const/16 v12, 0x30

    if-ge v7, v12, :cond_755

    const/16 v12, 0x3aa

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 949
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x66aea809

    if-ne v12, v13, :cond_754

    goto :goto_754

    :cond_754
    add-int/lit8 v7, v7, 0x1

    goto :goto_753

    :cond_755
    :goto_754
    const/16 v7, -0x61

    :goto_755
    const/16 v12, -0x5c

    if-ge v7, v12, :cond_757

    const/16 v12, 0x3ab

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 950
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x5257e94f

    if-ne v12, v13, :cond_756

    goto :goto_756

    :cond_756
    add-int/lit8 v7, v7, 0x1

    goto :goto_755

    :cond_757
    :goto_756
    const/16 v7, 0x4f

    :goto_757
    const/16 v12, 0x5f

    if-ge v7, v12, :cond_759

    const/16 v12, 0x3ac

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 951
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x1eacf59b

    if-ne v12, v13, :cond_758

    goto :goto_758

    :cond_758
    add-int/lit8 v7, v7, 0x1

    goto :goto_757

    :cond_759
    :goto_758
    const/16 v7, -0x6d

    :goto_759
    const/16 v12, -0x5c

    if-ge v7, v12, :cond_75b

    const/16 v12, 0x3ad

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 952
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x523c56bb

    if-ne v12, v13, :cond_75a

    goto :goto_75a

    :cond_75a
    add-int/lit8 v7, v7, 0x1

    goto :goto_759

    :cond_75b
    :goto_75a
    const/16 v7, 0x22

    :goto_75b
    const/16 v12, 0x31

    if-ge v7, v12, :cond_75d

    const/16 v12, 0x3ae

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 953
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2c2a4169

    if-ne v12, v13, :cond_75c

    goto :goto_75c

    :cond_75c
    add-int/lit8 v7, v7, 0x1

    goto :goto_75b

    :cond_75d
    :goto_75c
    const/16 v7, 0x49

    :goto_75d
    const/16 v12, 0x57

    if-ge v7, v12, :cond_75f

    const/16 v12, 0x3af

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 954
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x544ef1b3

    if-ne v12, v13, :cond_75e

    goto :goto_75e

    :cond_75e
    add-int/lit8 v7, v7, 0x1

    goto :goto_75d

    :cond_75f
    :goto_75e
    const/16 v7, 0x26

    :goto_75f
    const/16 v12, 0x40

    if-ge v7, v12, :cond_761

    const/16 v12, 0x3b0

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 955
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x7be3b6b4

    if-ne v12, v13, :cond_760

    goto :goto_760

    :cond_760
    add-int/lit8 v7, v7, 0x1

    goto :goto_75f

    :cond_761
    :goto_760
    const/16 v7, -0x59

    :goto_761
    const/16 v12, -0x4b

    if-ge v7, v12, :cond_763

    const/16 v12, 0x3b1

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 956
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x7cca6c92

    if-ne v12, v13, :cond_762

    goto :goto_762

    :cond_762
    add-int/lit8 v7, v7, 0x1

    goto :goto_761

    :cond_763
    :goto_762
    const/16 v7, 0x3a

    :goto_763
    const/16 v12, 0x48

    if-ge v7, v12, :cond_765

    const/16 v12, 0x3b2

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 957
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x448f3bd6

    if-ne v12, v13, :cond_764

    goto :goto_764

    :cond_764
    add-int/lit8 v7, v7, 0x1

    goto :goto_763

    :cond_765
    :goto_764
    const/16 v7, -0x58

    :goto_765
    const/16 v12, -0x4c

    if-ge v7, v12, :cond_767

    const/16 v12, 0x3b3

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 958
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x559d4a59

    if-ne v12, v13, :cond_766

    goto :goto_766

    :cond_766
    add-int/lit8 v7, v7, 0x1

    goto :goto_765

    :cond_767
    :goto_766
    const/16 v7, 0x7e

    :goto_767
    if-ge v7, v2, :cond_769

    const/16 v12, 0x3b4

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 959
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x444596d9

    if-ne v12, v13, :cond_768

    goto :goto_768

    :cond_768
    add-int/lit8 v7, v7, 0x1

    goto :goto_767

    :cond_769
    :goto_768
    const/16 v7, -0x34

    :goto_769
    const/16 v12, -0x24

    if-ge v7, v12, :cond_76b

    const/16 v12, 0x3b5

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 960
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0xfc121df

    if-ne v12, v13, :cond_76a

    goto :goto_76a

    :cond_76a
    add-int/lit8 v7, v7, 0x1

    goto :goto_769

    :cond_76b
    :goto_76a
    const/16 v7, 0x2d

    :goto_76b
    const/16 v12, 0x3f

    if-ge v7, v12, :cond_76d

    const/16 v12, 0x3b6

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 961
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x7c7beeb8

    if-ne v12, v13, :cond_76c

    goto :goto_76c

    :cond_76c
    add-int/lit8 v7, v7, 0x1

    goto :goto_76b

    :cond_76d
    :goto_76c
    const/16 v7, -0x44

    :goto_76d
    const/16 v12, -0x31

    if-ge v7, v12, :cond_76f

    const/16 v12, 0x3b7

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 962
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x44df5d6

    if-ne v12, v13, :cond_76e

    goto :goto_76e

    :cond_76e
    add-int/lit8 v7, v7, 0x1

    goto :goto_76d

    :cond_76f
    :goto_76e
    const/16 v7, -0x73

    :goto_76f
    const/16 v12, -0x68

    if-ge v7, v12, :cond_771

    const/16 v12, 0x3b8

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 963
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x457c8ec

    if-ne v12, v13, :cond_770

    goto :goto_770

    :cond_770
    add-int/lit8 v7, v7, 0x1

    goto :goto_76f

    :cond_771
    :goto_770
    const/16 v7, 0x5c

    :goto_771
    const/16 v12, 0x6d

    if-ge v7, v12, :cond_773

    const/16 v12, 0x3b9

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 964
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3771c5fe

    if-ne v12, v13, :cond_772

    goto :goto_772

    :cond_772
    add-int/lit8 v7, v7, 0x1

    goto :goto_771

    :cond_773
    :goto_772
    const/16 v7, 0x54

    :goto_773
    const/16 v12, 0x69

    if-ge v7, v12, :cond_775

    const/16 v12, 0x3ba

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 965
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x5e5bec86

    if-ne v12, v13, :cond_774

    goto :goto_774

    :cond_774
    add-int/lit8 v7, v7, 0x1

    goto :goto_773

    :cond_775
    :goto_774
    const/16 v7, 0x6c

    :goto_775
    const/16 v12, 0x7c

    if-ge v7, v12, :cond_777

    const/16 v12, 0x3bb

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 966
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x5dce4679

    if-ne v12, v13, :cond_776

    goto :goto_776

    :cond_776
    add-int/lit8 v7, v7, 0x1

    goto :goto_775

    :cond_777
    :goto_776
    const/16 v7, 0x2c

    :goto_777
    const/16 v12, 0x3a

    if-ge v7, v12, :cond_779

    const/16 v12, 0x3bc

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 967
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x1909b8c8

    if-ne v12, v13, :cond_778

    goto :goto_778

    :cond_778
    add-int/lit8 v7, v7, 0x1

    goto :goto_777

    :cond_779
    :goto_778
    const/4 v7, -0x4

    :goto_779
    const/4 v12, 0x4

    if-ge v7, v12, :cond_77b

    const/16 v12, 0x3bd

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 968
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x7d57aa74

    if-ne v12, v13, :cond_77a

    goto :goto_77a

    :cond_77a
    add-int/lit8 v7, v7, 0x1

    goto :goto_779

    :cond_77b
    :goto_77a
    const/16 v7, 0x5a

    :goto_77b
    const/16 v12, 0x65

    if-ge v7, v12, :cond_77d

    const/16 v12, 0x3be

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 969
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x256c4961

    if-ne v12, v13, :cond_77c

    goto :goto_77c

    :cond_77c
    add-int/lit8 v7, v7, 0x1

    goto :goto_77b

    :cond_77d
    :goto_77c
    const/16 v7, -0x21

    :goto_77d
    const/16 v12, -0x14

    if-ge v7, v12, :cond_77f

    const/16 v12, 0x3bf

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 970
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x1876a9b5

    if-ne v12, v13, :cond_77e

    goto :goto_77e

    :cond_77e
    add-int/lit8 v7, v7, 0x1

    goto :goto_77d

    :cond_77f
    :goto_77e
    const/16 v7, -0x38

    :goto_77f
    const/16 v12, -0x22

    if-ge v7, v12, :cond_781

    const/16 v12, 0x3c0

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 971
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x41c69567

    if-ne v12, v13, :cond_780

    goto :goto_780

    :cond_780
    add-int/lit8 v7, v7, 0x1

    goto :goto_77f

    :cond_781
    :goto_780
    const/16 v7, 0x3e

    :goto_781
    const/16 v12, 0x51

    if-ge v7, v12, :cond_783

    const/16 v12, 0x3c1

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 972
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x7a0025c4

    if-ne v12, v13, :cond_782

    goto :goto_782

    :cond_782
    add-int/lit8 v7, v7, 0x1

    goto :goto_781

    :cond_783
    :goto_782
    const/16 v7, 0x1f

    :goto_783
    const/16 v12, 0x31

    if-ge v7, v12, :cond_785

    const/16 v12, 0x3c2

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 973
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x361959aa

    if-ne v12, v13, :cond_784

    goto :goto_784

    :cond_784
    add-int/lit8 v7, v7, 0x1

    goto :goto_783

    :cond_785
    :goto_784
    const/16 v7, -0xc

    :goto_785
    if-ge v7, v5, :cond_787

    const/16 v12, 0x3c3

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 974
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x544528c5

    if-ne v12, v13, :cond_786

    goto :goto_786

    :cond_786
    add-int/lit8 v7, v7, 0x1

    goto :goto_785

    :cond_787
    :goto_786
    const/16 v7, 0x1b

    :goto_787
    const/16 v12, 0x2f

    if-ge v7, v12, :cond_789

    const/16 v12, 0x3c4

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 975
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2b2729d7

    if-ne v12, v13, :cond_788

    goto :goto_788

    :cond_788
    add-int/lit8 v7, v7, 0x1

    goto :goto_787

    :cond_789
    :goto_788
    const/16 v7, 0xe

    :goto_789
    if-ge v7, v9, :cond_78b

    const/16 v12, 0x3c5

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 976
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x51313f6b

    if-ne v12, v13, :cond_78a

    goto :goto_78a

    :cond_78a
    add-int/lit8 v7, v7, 0x1

    goto :goto_789

    :cond_78b
    :goto_78a
    const/16 v7, -0x4e

    :goto_78b
    const/16 v12, -0x35

    if-ge v7, v12, :cond_78d

    const/16 v12, 0x3c6

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 977
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x513d1a3e

    if-ne v12, v13, :cond_78c

    goto :goto_78c

    :cond_78c
    add-int/lit8 v7, v7, 0x1

    goto :goto_78b

    :cond_78d
    :goto_78c
    const/16 v7, 0x1c

    :goto_78d
    const/16 v12, 0x2c

    if-ge v7, v12, :cond_78f

    const/16 v12, 0x3c7

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 978
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x334405ba

    if-ne v12, v13, :cond_78e

    goto :goto_78e

    :cond_78e
    add-int/lit8 v7, v7, 0x1

    goto :goto_78d

    :cond_78f
    :goto_78e
    const/16 v7, -0x1e

    :goto_78f
    const/4 v12, -0x1

    if-ge v7, v12, :cond_791

    const/16 v12, 0x3c8

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 979
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0xf7bf43b

    if-ne v12, v13, :cond_790

    goto :goto_790

    :cond_790
    add-int/lit8 v7, v7, 0x1

    goto :goto_78f

    :cond_791
    :goto_790
    const/16 v7, 0x5d

    :goto_791
    const/16 v12, 0x76

    if-ge v7, v12, :cond_793

    const/16 v12, 0x3c9

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 980
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x4c4ee1c3    # 5.4232844E7f

    if-ne v12, v13, :cond_792

    goto :goto_792

    :cond_792
    add-int/lit8 v7, v7, 0x1

    goto :goto_791

    :cond_793
    :goto_792
    const/16 v7, -0x1a

    :goto_793
    const/16 v12, -0x15

    if-ge v7, v12, :cond_795

    const/16 v12, 0x3ca

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 981
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x5af32d8

    if-ne v12, v13, :cond_794

    goto :goto_794

    :cond_794
    add-int/lit8 v7, v7, 0x1

    goto :goto_793

    :cond_795
    :goto_794
    const/16 v7, -0x1b

    :goto_795
    const/16 v12, -0x9

    if-ge v7, v12, :cond_797

    const/16 v12, 0x3cb

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 982
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x2e8c027c

    if-ne v12, v13, :cond_796

    goto :goto_796

    :cond_796
    add-int/lit8 v7, v7, 0x1

    goto :goto_795

    :cond_797
    :goto_796
    const/16 v7, 0x21

    :goto_797
    const/16 v12, 0x31

    if-ge v7, v12, :cond_799

    const/16 v12, 0x3cc

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 983
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x71b97af

    if-ne v12, v13, :cond_798

    goto :goto_798

    :cond_798
    add-int/lit8 v7, v7, 0x1

    goto :goto_797

    :cond_799
    :goto_798
    const/16 v7, -0x6e

    :goto_799
    if-ge v7, v1, :cond_79b

    const/16 v12, 0x3cd

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 984
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x1fd1ed71

    if-ne v12, v13, :cond_79a

    goto :goto_79a

    :cond_79a
    add-int/lit8 v7, v7, 0x1

    goto :goto_799

    :cond_79b
    :goto_79a
    const/4 v7, 0x7

    :goto_79b
    const/16 v12, 0x1b

    if-ge v7, v12, :cond_79d

    const/16 v12, 0x3ce

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 985
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x50f5f86c

    if-ne v12, v13, :cond_79c

    goto :goto_79c

    :cond_79c
    add-int/lit8 v7, v7, 0x1

    goto :goto_79b

    :cond_79d
    :goto_79c
    const/16 v7, -0x32

    :goto_79d
    const/16 v12, -0x22

    if-ge v7, v12, :cond_79f

    const/16 v12, 0x3cf

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 986
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x2fd5c6c8

    if-ne v12, v13, :cond_79e

    goto :goto_79e

    :cond_79e
    add-int/lit8 v7, v7, 0x1

    goto :goto_79d

    :cond_79f
    :goto_79e
    const/16 v7, -0x42

    :goto_79f
    const/16 v12, -0x24

    if-ge v7, v12, :cond_7a1

    const/16 v12, 0x3d0

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 987
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0xbd5ee68

    if-ne v12, v13, :cond_7a0

    goto :goto_7a0

    :cond_7a0
    add-int/lit8 v7, v7, 0x1

    goto :goto_79f

    :cond_7a1
    :goto_7a0
    const/16 v7, 0x52

    :goto_7a1
    const/16 v12, 0x5e

    if-ge v7, v12, :cond_7a3

    const/16 v12, 0x3d1

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 988
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x548dc632

    if-ne v12, v13, :cond_7a2

    goto :goto_7a2

    :cond_7a2
    add-int/lit8 v7, v7, 0x1

    goto :goto_7a1

    :cond_7a3
    :goto_7a2
    const/16 v7, -0x7f

    :goto_7a3
    const/16 v12, -0x6c

    if-ge v7, v12, :cond_7a5

    const/16 v12, 0x3d2

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 989
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x2c574a6c

    if-ne v12, v13, :cond_7a4

    goto :goto_7a4

    :cond_7a4
    add-int/lit8 v7, v7, 0x1

    goto :goto_7a3

    :cond_7a5
    :goto_7a4
    const/16 v7, 0x1a

    :goto_7a5
    const/16 v12, 0x25

    if-ge v7, v12, :cond_7a7

    const/16 v12, 0x3d3

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 990
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x5c0dfe69

    if-ne v12, v13, :cond_7a6

    goto :goto_7a6

    :cond_7a6
    add-int/lit8 v7, v7, 0x1

    goto :goto_7a5

    :cond_7a7
    :goto_7a6
    const/16 v7, -0x60

    :goto_7a7
    const/16 v12, -0x52

    if-ge v7, v12, :cond_7a9

    const/16 v12, 0x3d4

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 991
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x5aea1cc3

    if-ne v12, v13, :cond_7a8

    goto :goto_7a8

    :cond_7a8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7a7

    :cond_7a9
    :goto_7a8
    const/16 v7, 0x54

    :goto_7a9
    const/16 v12, 0x71

    if-ge v7, v12, :cond_7ab

    const/16 v12, 0x3d5

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 992
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x216cca00

    if-ne v12, v13, :cond_7aa

    goto :goto_7aa

    :cond_7aa
    add-int/lit8 v7, v7, 0x1

    goto :goto_7a9

    :cond_7ab
    :goto_7aa
    const/16 v7, 0x1e

    :goto_7ab
    const/16 v12, 0x38

    if-ge v7, v12, :cond_7ad

    const/16 v12, 0x3d6

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 993
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0xd95e431    # -4.636999E30f

    if-ne v12, v13, :cond_7ac

    goto :goto_7ac

    :cond_7ac
    add-int/lit8 v7, v7, 0x1

    goto :goto_7ab

    :cond_7ad
    :goto_7ac
    const/4 v7, 0x1

    :goto_7ad
    const/16 v12, 0x11

    if-ge v7, v12, :cond_7af

    const/16 v12, 0x3d7

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 994
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x7252e96a

    if-ne v12, v13, :cond_7ae

    goto :goto_7ae

    :cond_7ae
    add-int/lit8 v7, v7, 0x1

    goto :goto_7ad

    :cond_7af
    :goto_7ae
    const/16 v7, -0x19

    :goto_7af
    const/4 v12, -0x4

    if-ge v7, v12, :cond_7b1

    const/16 v12, 0x3d8

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 995
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x1d37da16

    if-ne v12, v13, :cond_7b0

    goto :goto_7b0

    :cond_7b0
    add-int/lit8 v7, v7, 0x1

    goto :goto_7af

    :cond_7b1
    :goto_7b0
    const/16 v7, 0x30

    :goto_7b1
    const/16 v12, 0x47

    if-ge v7, v12, :cond_7b3

    const/16 v12, 0x3d9

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 996
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3849ae59

    if-ne v12, v13, :cond_7b2

    goto :goto_7b2

    :cond_7b2
    add-int/lit8 v7, v7, 0x1

    goto :goto_7b1

    :cond_7b3
    :goto_7b2
    const/4 v7, 0x4

    :goto_7b3
    const/16 v12, 0xd

    if-ge v7, v12, :cond_7b5

    const/16 v12, 0x3da

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 997
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x647076e0

    if-ne v12, v13, :cond_7b4

    goto :goto_7b4

    :cond_7b4
    add-int/lit8 v7, v7, 0x1

    goto :goto_7b3

    :cond_7b5
    :goto_7b4
    const/16 v7, -0x24

    :goto_7b5
    const/16 v12, -0x16

    if-ge v7, v12, :cond_7b7

    const/16 v12, 0x3db

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 998
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x6ded0d84

    if-ne v12, v13, :cond_7b6

    goto :goto_7b6

    :cond_7b6
    add-int/lit8 v7, v7, 0x1

    goto :goto_7b5

    :cond_7b7
    :goto_7b6
    const/16 v7, 0x6e

    :goto_7b7
    if-ge v7, v2, :cond_7b9

    const/16 v12, 0x3dc

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 999
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x2061306e

    if-ne v12, v13, :cond_7b8

    goto :goto_7b8

    :cond_7b8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7b7

    :cond_7b9
    :goto_7b8
    const/16 v7, -0x78

    :goto_7b9
    const/16 v12, -0x67

    if-ge v7, v12, :cond_7bb

    const/16 v12, 0x3dd

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1000
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x1854f1e3

    if-ne v12, v13, :cond_7ba

    goto :goto_7ba

    :cond_7ba
    add-int/lit8 v7, v7, 0x1

    goto :goto_7b9

    :cond_7bb
    :goto_7ba
    const/16 v7, 0x51

    :goto_7bb
    const/16 v12, 0x60

    if-ge v7, v12, :cond_7bd

    const/16 v12, 0x3de

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1001
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x1f11badf

    if-ne v12, v13, :cond_7bc

    goto :goto_7bc

    :cond_7bc
    add-int/lit8 v7, v7, 0x1

    goto :goto_7bb

    :cond_7bd
    :goto_7bc
    const/16 v7, 0x8

    :goto_7bd
    const/16 v12, 0x1d

    if-ge v7, v12, :cond_7bf

    const/16 v12, 0x3df

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1002
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x613f0dd5

    if-ne v12, v13, :cond_7be

    goto :goto_7be

    :cond_7be
    add-int/lit8 v7, v7, 0x1

    goto :goto_7bd

    :cond_7bf
    :goto_7be
    const/16 v7, -0x6f

    :goto_7bf
    const/16 v12, -0x5d

    if-ge v7, v12, :cond_7c1

    const/16 v12, 0x3e0

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1003
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x60a2549

    if-ne v12, v13, :cond_7c0

    goto :goto_7c0

    :cond_7c0
    add-int/lit8 v7, v7, 0x1

    goto :goto_7bf

    :cond_7c1
    :goto_7c0
    const/16 v7, -0x5e

    :goto_7c1
    if-ge v7, v4, :cond_7c3

    const/16 v12, 0x3e1

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1004
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x3f266004

    if-ne v12, v13, :cond_7c2

    goto :goto_7c2

    :cond_7c2
    add-int/lit8 v7, v7, 0x1

    goto :goto_7c1

    :cond_7c3
    :goto_7c2
    const/16 v7, 0x4e

    :goto_7c3
    const/16 v12, 0x5b

    if-ge v7, v12, :cond_7c5

    const/16 v12, 0x3e2

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1005
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3a9cc00

    if-ne v12, v13, :cond_7c4

    goto :goto_7c4

    :cond_7c4
    add-int/lit8 v7, v7, 0x1

    goto :goto_7c3

    :cond_7c5
    :goto_7c4
    const/16 v7, 0x68

    :goto_7c5
    if-ge v7, v2, :cond_7c7

    const/16 v12, 0x3e3

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1006
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x9cd183c

    if-ne v12, v13, :cond_7c6

    goto :goto_7c6

    :cond_7c6
    add-int/lit8 v7, v7, 0x1

    goto :goto_7c5

    :cond_7c7
    :goto_7c6
    const/16 v7, 0x3a

    :goto_7c7
    const/16 v12, 0x41

    if-ge v7, v12, :cond_7c9

    const/16 v12, 0x3e4

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1007
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x307e5acc

    if-ne v12, v13, :cond_7c8

    goto :goto_7c8

    :cond_7c8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7c7

    :cond_7c9
    :goto_7c8
    const/16 v7, 0x58

    :goto_7c9
    const/16 v12, 0x64

    if-ge v7, v12, :cond_7cb

    const/16 v12, 0x3e5

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1008
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x7afa5b2b

    if-ne v12, v13, :cond_7ca

    goto :goto_7ca

    :cond_7ca
    add-int/lit8 v7, v7, 0x1

    goto :goto_7c9

    :cond_7cb
    :goto_7ca
    const/16 v7, 0x47

    :goto_7cb
    const/16 v12, 0x58

    if-ge v7, v12, :cond_7cd

    const/16 v12, 0x3e6

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1009
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x7ad402c9

    if-ne v12, v13, :cond_7cc

    goto :goto_7cc

    :cond_7cc
    add-int/lit8 v7, v7, 0x1

    goto :goto_7cb

    :cond_7cd
    :goto_7cc
    const/16 v7, 0x16

    :goto_7cd
    const/16 v12, 0x21

    if-ge v7, v12, :cond_7cf

    const/16 v12, 0x3e7

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1010
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x558a35ff

    if-ne v12, v13, :cond_7ce

    goto :goto_7ce

    :cond_7ce
    add-int/lit8 v7, v7, 0x1

    goto :goto_7cd

    :cond_7cf
    :goto_7ce
    const/16 v7, -0x3e

    :goto_7cf
    const/16 v12, -0x22

    if-ge v7, v12, :cond_7d1

    const/16 v12, 0x3e8

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1011
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x667b12fc

    if-ne v12, v13, :cond_7d0

    goto :goto_7d0

    :cond_7d0
    add-int/lit8 v7, v7, 0x1

    goto :goto_7cf

    :cond_7d1
    :goto_7d0
    const/16 v7, 0x14

    :goto_7d1
    const/16 v12, 0x27

    if-ge v7, v12, :cond_7d3

    const/16 v12, 0x3e9

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1012
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2b9b2835

    if-ne v12, v13, :cond_7d2

    goto :goto_7d2

    :cond_7d2
    add-int/lit8 v7, v7, 0x1

    goto :goto_7d1

    :cond_7d3
    :goto_7d2
    const/16 v7, -0x28

    :goto_7d3
    const/16 v12, -0x13

    if-ge v7, v12, :cond_7d5

    const/16 v12, 0x3ea

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1013
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x702fede2

    if-ne v12, v13, :cond_7d4

    goto :goto_7d4

    :cond_7d4
    add-int/lit8 v7, v7, 0x1

    goto :goto_7d3

    :cond_7d5
    :goto_7d4
    const/16 v7, -0x42

    :goto_7d5
    const/16 v12, -0x33

    if-ge v7, v12, :cond_7d7

    const/16 v12, 0x3eb

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1014
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x21e8bed

    if-ne v12, v13, :cond_7d6

    goto :goto_7d6

    :cond_7d6
    add-int/lit8 v7, v7, 0x1

    goto :goto_7d5

    :cond_7d7
    :goto_7d6
    const/16 v7, -0x73

    :goto_7d7
    const/16 v12, -0x5d

    if-ge v7, v12, :cond_7d9

    const/16 v12, 0x3ec

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1015
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x1424dfc6

    if-ne v12, v13, :cond_7d8

    goto :goto_7d8

    :cond_7d8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7d7

    :cond_7d9
    :goto_7d8
    const/16 v7, 0x4d

    :goto_7d9
    const/16 v12, 0x6a

    if-ge v7, v12, :cond_7db

    const/16 v12, 0x3ed

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1016
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x7d63569d

    if-ne v12, v13, :cond_7da

    goto :goto_7da

    :cond_7da
    add-int/lit8 v7, v7, 0x1

    goto :goto_7d9

    :cond_7db
    :goto_7da
    const/16 v7, 0x51

    :goto_7db
    const/16 v12, 0x5b

    if-ge v7, v12, :cond_7dd

    const/16 v12, 0x3ee

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1017
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x794cf549

    if-ne v12, v13, :cond_7dc

    goto :goto_7dc

    :cond_7dc
    add-int/lit8 v7, v7, 0x1

    goto :goto_7db

    :cond_7dd
    :goto_7dc
    const/16 v7, -0x34

    :goto_7dd
    const/16 v12, -0x1f

    if-ge v7, v12, :cond_7df

    const/16 v12, 0x3ef

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1018
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x1cd0a4b6

    if-ne v12, v13, :cond_7de

    goto :goto_7de

    :cond_7de
    add-int/lit8 v7, v7, 0x1

    goto :goto_7dd

    :cond_7df
    :goto_7de
    const/16 v7, -0x16

    :goto_7df
    const/4 v12, -0x4

    if-ge v7, v12, :cond_7e1

    const/16 v12, 0x3f0

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1019
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x205497cb

    if-ne v12, v13, :cond_7e0

    goto :goto_7e0

    :cond_7e0
    add-int/lit8 v7, v7, 0x1

    goto :goto_7df

    :cond_7e1
    :goto_7e0
    const/16 v7, 0x14

    :goto_7e1
    const/16 v12, 0x19

    if-ge v7, v12, :cond_7e3

    const/16 v12, 0x3f1

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1020
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0xd0463cc

    if-ne v12, v13, :cond_7e2

    goto :goto_7e2

    :cond_7e2
    add-int/lit8 v7, v7, 0x1

    goto :goto_7e1

    :cond_7e3
    :goto_7e2
    const/16 v7, -0x51

    :goto_7e3
    const/16 v12, -0x36

    if-ge v7, v12, :cond_7e5

    const/16 v12, 0x3f2

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1021
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x4419e046

    if-ne v12, v13, :cond_7e4

    goto :goto_7e4

    :cond_7e4
    add-int/lit8 v7, v7, 0x1

    goto :goto_7e3

    :cond_7e5
    :goto_7e4
    const/16 v7, -0x39

    :goto_7e5
    const/16 v12, -0x29

    if-ge v7, v12, :cond_7e7

    const/16 v12, 0x3f3

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1022
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x31c37f71

    if-ne v12, v13, :cond_7e6

    goto :goto_7e6

    :cond_7e6
    add-int/lit8 v7, v7, 0x1

    goto :goto_7e5

    :cond_7e7
    :goto_7e6
    const/16 v7, 0x46

    :goto_7e7
    const/16 v12, 0x4d

    if-ge v7, v12, :cond_7e9

    const/16 v12, 0x3f4

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1023
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x74298b05

    if-ne v12, v13, :cond_7e8

    goto :goto_7e8

    :cond_7e8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7e7

    :cond_7e9
    :goto_7e8
    const/16 v7, -0x73

    :goto_7e9
    const/16 v12, -0x6a

    if-ge v7, v12, :cond_7eb

    const/16 v12, 0x3f5

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1024
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x473a2447

    if-ne v12, v13, :cond_7ea

    goto :goto_7ea

    :cond_7ea
    add-int/lit8 v7, v7, 0x1

    goto :goto_7e9

    :cond_7eb
    :goto_7ea
    const/4 v7, -0x7

    :goto_7eb
    const/4 v12, 0x2

    if-ge v7, v12, :cond_7ed

    const/16 v12, 0x3f6

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1025
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x7bbb7aa9

    if-ne v12, v13, :cond_7ec

    goto :goto_7ec

    :cond_7ec
    add-int/lit8 v7, v7, 0x1

    goto :goto_7eb

    :cond_7ed
    :goto_7ec
    const/16 v7, -0x60

    :goto_7ed
    const/16 v12, -0x4a

    if-ge v7, v12, :cond_7ef

    const/16 v12, 0x3f7

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1026
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3a0cad94

    if-ne v12, v13, :cond_7ee

    goto :goto_7ee

    :cond_7ee
    add-int/lit8 v7, v7, 0x1

    goto :goto_7ed

    :cond_7ef
    :goto_7ee
    const/16 v7, -0x43

    :goto_7ef
    if-ge v7, v6, :cond_7f1

    const/16 v12, 0x3f8

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1027
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x39ba4531

    if-ne v12, v13, :cond_7f0

    goto :goto_7f0

    :cond_7f0
    add-int/lit8 v7, v7, 0x1

    goto :goto_7ef

    :cond_7f1
    :goto_7f0
    const/4 v7, -0x4

    :goto_7f1
    if-ge v7, v5, :cond_7f3

    const/16 v12, 0x3f9

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1028
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x39ba4531

    if-ne v12, v13, :cond_7f2

    goto :goto_7f2

    :cond_7f2
    add-int/lit8 v7, v7, 0x1

    goto :goto_7f1

    :cond_7f3
    :goto_7f2
    const/16 v7, -0x38

    :goto_7f3
    const/16 v12, -0x20

    if-ge v7, v12, :cond_7f5

    const/16 v12, 0x3fa

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1029
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x1344a47a

    if-ne v12, v13, :cond_7f4

    goto :goto_7f4

    :cond_7f4
    add-int/lit8 v7, v7, 0x1

    goto :goto_7f3

    :cond_7f5
    :goto_7f4
    const/16 v7, 0x73

    :goto_7f5
    if-ge v7, v2, :cond_7f7

    const/16 v12, 0x3fb

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1030
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x25d9cd64

    if-ne v12, v13, :cond_7f6

    goto :goto_7f6

    :cond_7f6
    add-int/lit8 v7, v7, 0x1

    goto :goto_7f5

    :cond_7f7
    :goto_7f6
    const/16 v7, -0x36

    :goto_7f7
    const/16 v12, -0x26

    if-ge v7, v12, :cond_7f9

    const/16 v12, 0x3fc

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1031
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x2faff28c

    if-ne v12, v13, :cond_7f8

    goto :goto_7f8

    :cond_7f8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7f7

    :cond_7f9
    :goto_7f8
    const/4 v7, -0x3

    :goto_7f9
    const/16 v12, 0x18

    if-ge v7, v12, :cond_7fb

    const/16 v12, 0x3fd

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1032
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x686cd52d

    if-ne v12, v13, :cond_7fa

    goto :goto_7fa

    :cond_7fa
    add-int/lit8 v7, v7, 0x1

    goto :goto_7f9

    :cond_7fb
    :goto_7fa
    const/16 v7, 0x23

    :goto_7fb
    const/16 v12, 0x39

    if-ge v7, v12, :cond_7fd

    const/16 v12, 0x3fe

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1033
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x1b59d88a

    if-ne v12, v13, :cond_7fc

    goto :goto_7fc

    :cond_7fc
    add-int/lit8 v7, v7, 0x1

    goto :goto_7fb

    :cond_7fd
    :goto_7fc
    const/16 v7, 0x4d

    :goto_7fd
    const/16 v12, 0x5f

    if-ge v7, v12, :cond_7ff

    const/16 v12, 0x3ff

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1034
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x670149d4

    if-ne v12, v13, :cond_7fe

    goto :goto_7fe

    :cond_7fe
    add-int/lit8 v7, v7, 0x1

    goto :goto_7fd

    :cond_7ff
    :goto_7fe
    const/16 v7, 0x29

    :goto_7ff
    const/16 v12, 0x42

    if-ge v7, v12, :cond_801

    const/16 v12, 0x400

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1035
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x1b6a43db

    if-ne v12, v13, :cond_800

    goto :goto_800

    :cond_800
    add-int/lit8 v7, v7, 0x1

    goto :goto_7ff

    :cond_801
    :goto_800
    const/16 v7, 0x66

    :goto_801
    const/16 v12, 0x7f

    if-ge v7, v12, :cond_803

    const/16 v12, 0x401

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1036
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0xe1c22fd

    if-ne v12, v13, :cond_802

    goto :goto_802

    :cond_802
    add-int/lit8 v7, v7, 0x1

    goto :goto_801

    :cond_803
    :goto_802
    const/16 v7, 0x67

    :goto_803
    const/16 v12, 0x7c

    if-ge v7, v12, :cond_805

    const/16 v12, 0x402

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1037
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x865d953

    if-ne v12, v13, :cond_804

    goto :goto_804

    :cond_804
    add-int/lit8 v7, v7, 0x1

    goto :goto_803

    :cond_805
    :goto_804
    const/16 v7, 0x63

    :goto_805
    const/16 v12, 0x74

    if-ge v7, v12, :cond_807

    const/16 v12, 0x403

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1038
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x60beab07

    if-ne v12, v13, :cond_806

    goto :goto_806

    :cond_806
    add-int/lit8 v7, v7, 0x1

    goto :goto_805

    :cond_807
    :goto_806
    const/16 v7, 0x16

    :goto_807
    const/16 v12, 0x28

    if-ge v7, v12, :cond_809

    const/16 v12, 0x404

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1039
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x4984c9ff

    if-ne v12, v13, :cond_808

    goto :goto_808

    :cond_808
    add-int/lit8 v7, v7, 0x1

    goto :goto_807

    :cond_809
    :goto_808
    const/16 v7, 0x20

    :goto_809
    if-ge v7, v14, :cond_80b

    const/16 v12, 0x405

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1040
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x6abf394d

    if-ne v12, v13, :cond_80a

    goto :goto_80a

    :cond_80a
    add-int/lit8 v7, v7, 0x1

    goto :goto_809

    :cond_80b
    :goto_80a
    const/16 v7, -0x3d

    :goto_80b
    const/16 v12, -0x32

    if-ge v7, v12, :cond_80d

    const/16 v12, 0x406

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1041
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x60017bcb

    if-ne v12, v13, :cond_80c

    goto :goto_80c

    :cond_80c
    add-int/lit8 v7, v7, 0x1

    goto :goto_80b

    :cond_80d
    :goto_80c
    const/16 v7, 0x5e

    :goto_80d
    const/16 v12, 0x6d

    if-ge v7, v12, :cond_80f

    const/16 v12, 0x407

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1042
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x64b72d92

    if-ne v12, v13, :cond_80e

    goto :goto_80e

    :cond_80e
    add-int/lit8 v7, v7, 0x1

    goto :goto_80d

    :cond_80f
    :goto_80e
    const/4 v7, 0x2

    :goto_80f
    const/16 v12, 0x11

    if-ge v7, v12, :cond_811

    const/16 v12, 0x408

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1043
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x608fad9b

    if-ne v12, v13, :cond_810

    goto :goto_810

    :cond_810
    add-int/lit8 v7, v7, 0x1

    goto :goto_80f

    :cond_811
    :goto_810
    const/16 v7, -0x24

    :goto_811
    const/16 v12, -0x1a

    if-ge v7, v12, :cond_813

    const/16 v12, 0x409

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1044
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x6f4b2c0f

    if-ne v12, v13, :cond_812

    goto :goto_812

    :cond_812
    add-int/lit8 v7, v7, 0x1

    goto :goto_811

    :cond_813
    :goto_812
    const/16 v7, -0x33

    :goto_813
    const/16 v12, -0x24

    if-ge v7, v12, :cond_815

    const/16 v12, 0x40a

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1045
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x27bf1b04

    if-ne v12, v13, :cond_814

    goto :goto_814

    :cond_814
    add-int/lit8 v7, v7, 0x1

    goto :goto_813

    :cond_815
    :goto_814
    const/16 v7, 0x56

    :goto_815
    const/16 v12, 0x58

    if-ge v7, v12, :cond_817

    const/16 v12, 0x40b

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1046
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x45bff400    # 6142.5f

    if-ne v12, v13, :cond_816

    goto :goto_816

    :cond_816
    add-int/lit8 v7, v7, 0x1

    goto :goto_815

    :cond_817
    :goto_816
    const/16 v7, 0x4b

    :goto_817
    const/16 v12, 0x57

    if-ge v7, v12, :cond_819

    const/16 v12, 0x40c

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1047
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x741024c8

    if-ne v12, v13, :cond_818

    goto :goto_818

    :cond_818
    add-int/lit8 v7, v7, 0x1

    goto :goto_817

    :cond_819
    :goto_818
    const/16 v7, 0x28

    :goto_819
    const/16 v12, 0x43

    if-ge v7, v12, :cond_81b

    const/16 v12, 0x40d

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1048
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x27ede45a

    if-ne v12, v13, :cond_81a

    goto :goto_81a

    :cond_81a
    add-int/lit8 v7, v7, 0x1

    goto :goto_819

    :cond_81b
    :goto_81a
    const/16 v7, -0x69

    :goto_81b
    const/16 v12, -0x58

    if-ge v7, v12, :cond_81d

    const/16 v12, 0x40e

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1049
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2a94a3f7

    if-ne v12, v13, :cond_81c

    goto :goto_81c

    :cond_81c
    add-int/lit8 v7, v7, 0x1

    goto :goto_81b

    :cond_81d
    :goto_81c
    const/16 v7, -0x34

    :goto_81d
    const/16 v12, -0x22

    if-ge v7, v12, :cond_81f

    const/16 v12, 0x40f

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1050
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x47e9aa92

    if-ne v12, v13, :cond_81e

    goto :goto_81e

    :cond_81e
    add-int/lit8 v7, v7, 0x1

    goto :goto_81d

    :cond_81f
    :goto_81e
    const/16 v7, -0x6b

    :goto_81f
    const/16 v12, -0x67

    if-ge v7, v12, :cond_821

    const/16 v12, 0x410

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1051
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x597717d4

    if-ne v12, v13, :cond_820

    goto :goto_820

    :cond_820
    add-int/lit8 v7, v7, 0x1

    goto :goto_81f

    :cond_821
    :goto_820
    const/16 v7, -0x3e

    :goto_821
    const/16 v12, -0x36

    if-ge v7, v12, :cond_823

    const/16 v12, 0x411

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1052
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x4c61b995

    if-ne v12, v13, :cond_822

    goto :goto_822

    :cond_822
    add-int/lit8 v7, v7, 0x1

    goto :goto_821

    :cond_823
    :goto_822
    const/4 v7, 0x1

    :goto_823
    const/16 v12, 0x14

    if-ge v7, v12, :cond_825

    const/16 v12, 0x412

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1053
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x69eacd54

    if-ne v12, v13, :cond_824

    goto :goto_824

    :cond_824
    add-int/lit8 v7, v7, 0x1

    goto :goto_823

    :cond_825
    :goto_824
    const/16 v7, -0x22

    :goto_825
    const/16 v12, -0x11

    if-ge v7, v12, :cond_827

    const/16 v12, 0x413

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1054
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x51961509

    if-ne v12, v13, :cond_826

    goto :goto_826

    :cond_826
    add-int/lit8 v7, v7, 0x1

    goto :goto_825

    :cond_827
    :goto_826
    const/16 v7, -0xe

    :goto_827
    const/4 v12, 0x4

    if-ge v7, v12, :cond_829

    const/16 v12, 0x414

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1055
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x731086eb

    if-ne v12, v13, :cond_828

    goto :goto_828

    :cond_828
    add-int/lit8 v7, v7, 0x1

    goto :goto_827

    :cond_829
    :goto_828
    const/16 v7, 0x52

    :goto_829
    const/16 v12, 0x65

    if-ge v7, v12, :cond_82b

    const/16 v12, 0x415

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1056
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x49604e39

    if-ne v12, v13, :cond_82a

    goto :goto_82a

    :cond_82a
    add-int/lit8 v7, v7, 0x1

    goto :goto_829

    :cond_82b
    :goto_82a
    const/16 v7, -0x3c

    :goto_82b
    const/16 v12, -0x30

    if-ge v7, v12, :cond_82d

    const/16 v12, 0x416

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1057
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x585af769

    if-ne v12, v13, :cond_82c

    goto :goto_82c

    :cond_82c
    add-int/lit8 v7, v7, 0x1

    goto :goto_82b

    :cond_82d
    :goto_82c
    const/16 v7, 0x44

    :goto_82d
    const/16 v12, 0x4e

    if-ge v7, v12, :cond_82f

    const/16 v12, 0x417

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1058
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x2262c04f

    if-ne v12, v13, :cond_82e

    goto :goto_82e

    :cond_82e
    add-int/lit8 v7, v7, 0x1

    goto :goto_82d

    :cond_82f
    :goto_82e
    const/4 v7, 0x3

    :goto_82f
    const/16 v12, 0xb

    if-ge v7, v12, :cond_831

    const/16 v12, 0x418

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1059
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x48004ba7

    if-ne v12, v13, :cond_830

    goto :goto_830

    :cond_830
    add-int/lit8 v7, v7, 0x1

    goto :goto_82f

    :cond_831
    :goto_830
    const/16 v7, 0x4b

    :goto_831
    const/16 v12, 0x67

    if-ge v7, v12, :cond_833

    const/16 v12, 0x419

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1060
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x31ee2d1f    # -6.1162912E8f

    if-ne v12, v13, :cond_832

    goto :goto_832

    :cond_832
    add-int/lit8 v7, v7, 0x1

    goto :goto_831

    :cond_833
    :goto_832
    const/16 v7, -0x5f

    :goto_833
    const/16 v12, -0x4d

    if-ge v7, v12, :cond_835

    const/16 v12, 0x41a

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1061
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x75d8e3f9

    if-ne v12, v13, :cond_834

    goto :goto_834

    :cond_834
    add-int/lit8 v7, v7, 0x1

    goto :goto_833

    :cond_835
    :goto_834
    const/16 v7, -0x37

    :goto_835
    const/16 v12, -0x24

    if-ge v7, v12, :cond_837

    const/16 v12, 0x41b

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1062
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x5306ac58

    if-ne v12, v13, :cond_836

    goto :goto_836

    :cond_836
    add-int/lit8 v7, v7, 0x1

    goto :goto_835

    :cond_837
    :goto_836
    const/16 v7, -0x6c

    :goto_837
    const/16 v12, -0x60

    if-ge v7, v12, :cond_839

    const/16 v12, 0x41c

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1063
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x1fb2e749

    if-ne v12, v13, :cond_838

    goto :goto_838

    :cond_838
    add-int/lit8 v7, v7, 0x1

    goto :goto_837

    :cond_839
    :goto_838
    const/16 v7, 0x4f

    :goto_839
    const/16 v12, 0x59

    if-ge v7, v12, :cond_83b

    const/16 v12, 0x41d

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1064
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x76835468

    if-ne v12, v13, :cond_83a

    goto :goto_83a

    :cond_83a
    add-int/lit8 v7, v7, 0x1

    goto :goto_839

    :cond_83b
    :goto_83a
    const/16 v7, -0x72

    :goto_83b
    const/16 v12, -0x5f

    if-ge v7, v12, :cond_83d

    const/16 v12, 0x41e

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1065
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x2ec0fc70

    if-ne v12, v13, :cond_83c

    goto :goto_83c

    :cond_83c
    add-int/lit8 v7, v7, 0x1

    goto :goto_83b

    :cond_83d
    :goto_83c
    const/16 v7, 0x64

    :goto_83d
    const/16 v12, 0x79

    if-ge v7, v12, :cond_83f

    const/16 v12, 0x41f

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1066
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x1d89b50a

    if-ne v12, v13, :cond_83e

    goto :goto_83e

    :cond_83e
    add-int/lit8 v7, v7, 0x1

    goto :goto_83d

    :cond_83f
    :goto_83e
    const/16 v7, 0x50

    :goto_83f
    const/16 v12, 0x5c

    if-ge v7, v12, :cond_841

    const/16 v12, 0x420

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1067
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x5c0a5446

    if-ne v12, v13, :cond_840

    goto :goto_840

    :cond_840
    add-int/lit8 v7, v7, 0x1

    goto :goto_83f

    :cond_841
    :goto_840
    const/16 v7, 0x21

    :goto_841
    if-ge v7, v14, :cond_843

    const/16 v12, 0x421

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1068
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x354a384f    # -5956568.5f

    if-ne v12, v13, :cond_842

    goto :goto_842

    :cond_842
    add-int/lit8 v7, v7, 0x1

    goto :goto_841

    :cond_843
    :goto_842
    const/16 v7, 0x26

    :goto_843
    const/16 v12, 0x3a

    if-ge v7, v12, :cond_845

    const/16 v12, 0x422

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1069
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x5500ffaf

    if-ne v12, v13, :cond_844

    goto :goto_844

    :cond_844
    add-int/lit8 v7, v7, 0x1

    goto :goto_843

    :cond_845
    :goto_844
    const/16 v7, 0x30

    :goto_845
    const/16 v12, 0x39

    if-ge v7, v12, :cond_847

    const/16 v12, 0x423

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1070
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x2d761f17

    if-ne v12, v13, :cond_846

    goto :goto_846

    :cond_846
    add-int/lit8 v7, v7, 0x1

    goto :goto_845

    :cond_847
    :goto_846
    const/16 v7, 0x40

    :goto_847
    const/16 v12, 0x4d

    if-ge v7, v12, :cond_849

    const/16 v12, 0x424

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1071
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, 0x3374f847

    if-ne v12, v13, :cond_848

    goto :goto_848

    :cond_848
    add-int/lit8 v7, v7, 0x1

    goto :goto_847

    :cond_849
    :goto_848
    const/16 v7, -0x17

    :goto_849
    const/16 v12, -0xe

    if-ge v7, v12, :cond_84b

    const/16 v12, 0x425

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1072
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x1d9c7952

    if-ne v12, v13, :cond_84a

    goto :goto_84a

    :cond_84a
    add-int/lit8 v7, v7, 0x1

    goto :goto_849

    :cond_84b
    :goto_84a
    const/16 v7, -0x7d

    :goto_84b
    const/16 v12, -0x6f

    if-ge v7, v12, :cond_84d

    const/16 v12, 0x426

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1073
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x3a903f6f

    if-ne v12, v13, :cond_84c

    goto :goto_84c

    :cond_84c
    add-int/lit8 v7, v7, 0x1

    goto :goto_84b

    :cond_84d
    :goto_84c
    const/16 v7, -0x80

    :goto_84d
    const/16 v12, -0x78

    if-ge v7, v12, :cond_84f

    const/16 v12, 0x427

    int-to-byte v13, v7

    aput-byte v13, v0, v12

    .line 1074
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v12

    const v13, -0x241e7951

    if-ne v12, v13, :cond_84e

    goto :goto_84e

    :cond_84e
    add-int/lit8 v7, v7, 0x1

    goto :goto_84d

    :cond_84f
    :goto_84e
    const/16 v7, 0x55

    if-ge v8, v7, :cond_851

    const/16 v7, 0x428

    int-to-byte v12, v8

    aput-byte v12, v0, v7

    .line 1075
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v7

    const v12, -0x261f18e4

    if-ne v7, v12, :cond_850

    goto :goto_84f

    :cond_850
    add-int/lit8 v8, v8, 0x1

    goto :goto_84e

    :cond_851
    :goto_84f
    const/16 v7, 0x51

    :goto_850
    const/16 v8, 0x5d

    if-ge v7, v8, :cond_853

    const/16 v8, 0x429

    int-to-byte v12, v7

    aput-byte v12, v0, v8

    .line 1076
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v8

    const v12, -0x6c78b3e

    if-ne v8, v12, :cond_852

    goto :goto_851

    :cond_852
    add-int/lit8 v7, v7, 0x1

    goto :goto_850

    :cond_853
    :goto_851
    const/16 v7, -0xa

    :goto_852
    const/4 v8, -0x1

    if-ge v7, v8, :cond_855

    const/16 v8, 0x42a

    int-to-byte v12, v7

    aput-byte v12, v0, v8

    .line 1077
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v8

    const v12, 0x70823208

    if-ne v8, v12, :cond_854

    goto :goto_853

    :cond_854
    add-int/lit8 v7, v7, 0x1

    goto :goto_852

    :cond_855
    :goto_853
    const/16 v7, 0x61

    :goto_854
    const/16 v8, 0x75

    if-ge v7, v8, :cond_857

    const/16 v8, 0x42b

    int-to-byte v12, v7

    aput-byte v12, v0, v8

    .line 1078
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v8

    const v12, -0x230800c0

    if-ne v8, v12, :cond_856

    goto :goto_855

    :cond_856
    add-int/lit8 v7, v7, 0x1

    goto :goto_854

    :cond_857
    :goto_855
    const/16 v7, -0x45

    :goto_856
    const/16 v8, -0x3e

    if-ge v7, v8, :cond_859

    const/16 v8, 0x42c

    int-to-byte v12, v7

    aput-byte v12, v0, v8

    .line 1079
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v8

    const v12, -0x2d420449

    if-ne v8, v12, :cond_858

    goto :goto_857

    :cond_858
    add-int/lit8 v7, v7, 0x1

    goto :goto_856

    :cond_859
    :goto_857
    const/16 v7, 0x1f

    if-ge v3, v7, :cond_85b

    const/16 v7, 0x42d

    int-to-byte v8, v3

    aput-byte v8, v0, v7

    .line 1080
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v7

    const v8, 0xb1dda38

    if-ne v7, v8, :cond_85a

    goto :goto_858

    :cond_85a
    add-int/lit8 v3, v3, 0x1

    goto :goto_857

    :cond_85b
    :goto_858
    const/16 v3, 0x75

    :goto_859
    if-ge v3, v2, :cond_85d

    const/16 v7, 0x42e

    int-to-byte v8, v3

    aput-byte v8, v0, v7

    .line 1081
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v7

    const v8, -0x54c1580f

    if-ne v7, v8, :cond_85c

    goto :goto_85a

    :cond_85c
    add-int/lit8 v3, v3, 0x1

    goto :goto_859

    :cond_85d
    :goto_85a
    const/16 v3, 0x76

    :goto_85b
    const/16 v7, 0x77

    if-ge v3, v7, :cond_85f

    const/16 v7, 0x42f

    int-to-byte v8, v3

    aput-byte v8, v0, v7

    .line 1082
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v7

    const v8, 0x2986f958

    if-ne v7, v8, :cond_85e

    goto :goto_85c

    :cond_85e
    add-int/lit8 v3, v3, 0x1

    goto :goto_85b

    :cond_85f
    :goto_85c
    const/16 v3, 0xa

    :goto_85d
    const/16 v7, 0x11

    if-ge v3, v7, :cond_861

    const/16 v7, 0x430

    int-to-byte v8, v3

    aput-byte v8, v0, v7

    .line 1083
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v7

    const v8, 0x616a26d5

    if-ne v7, v8, :cond_860

    goto :goto_85e

    :cond_860
    add-int/lit8 v3, v3, 0x1

    goto :goto_85d

    :cond_861
    :goto_85e
    const/16 v3, -0x4b

    if-ge v4, v3, :cond_863

    const/16 v3, 0x431

    int-to-byte v7, v4

    aput-byte v7, v0, v3

    .line 1084
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v3

    const v7, -0x57b58f02

    if-ne v3, v7, :cond_862

    goto :goto_85f

    :cond_862
    add-int/lit8 v4, v4, 0x1

    goto :goto_85e

    :cond_863
    :goto_85f
    const/16 v3, 0x68

    :goto_860
    if-ge v3, v2, :cond_865

    const/16 v4, 0x432

    int-to-byte v7, v3

    aput-byte v7, v0, v4

    .line 1085
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v4

    const v7, -0x41872614

    if-ne v4, v7, :cond_864

    goto :goto_861

    :cond_864
    add-int/lit8 v3, v3, 0x1

    goto :goto_860

    :cond_865
    :goto_861
    const/16 v2, 0x27

    :goto_862
    const/16 v3, 0x3a

    if-ge v2, v3, :cond_867

    const/16 v3, 0x433

    int-to-byte v4, v2

    aput-byte v4, v0, v3

    .line 1086
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v3

    const v4, -0x584fbd62

    if-ne v3, v4, :cond_866

    goto :goto_863

    :cond_866
    add-int/lit8 v2, v2, 0x1

    goto :goto_862

    :cond_867
    :goto_863
    const/16 v2, -0x14

    :goto_864
    const/16 v3, -0x10

    if-ge v2, v3, :cond_869

    const/16 v3, 0x434

    int-to-byte v4, v2

    aput-byte v4, v0, v3

    .line 1087
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v3

    const v4, 0x6c22259f

    if-ne v3, v4, :cond_868

    goto :goto_865

    :cond_868
    add-int/lit8 v2, v2, 0x1

    goto :goto_864

    :cond_869
    :goto_865
    const/16 v2, -0x4c

    :goto_866
    const/16 v3, -0x3f

    if-ge v2, v3, :cond_86b

    const/16 v3, 0x435

    int-to-byte v4, v2

    aput-byte v4, v0, v3

    .line 1088
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v3

    const v4, -0x7173f5a9

    if-ne v3, v4, :cond_86a

    goto :goto_867

    :cond_86a
    add-int/lit8 v2, v2, 0x1

    goto :goto_866

    :cond_86b
    :goto_867
    const/16 v2, 0x46

    :goto_868
    const/16 v3, 0x52

    if-ge v2, v3, :cond_86d

    const/16 v3, 0x436

    int-to-byte v4, v2

    aput-byte v4, v0, v3

    .line 1089
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v3

    const v4, -0x5f788d9c

    if-ne v3, v4, :cond_86c

    goto :goto_869

    :cond_86c
    add-int/lit8 v2, v2, 0x1

    goto :goto_868

    :cond_86d
    :goto_869
    const/16 v2, -0x2a

    :goto_86a
    const/16 v3, -0x1b

    if-ge v2, v3, :cond_86f

    const/16 v3, 0x437

    int-to-byte v4, v2

    aput-byte v4, v0, v3

    .line 1090
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v3

    const v4, -0x133906a6

    if-ne v3, v4, :cond_86e

    goto :goto_86b

    :cond_86e
    add-int/lit8 v2, v2, 0x1

    goto :goto_86a

    :cond_86f
    :goto_86b
    const/16 v2, 0x57

    const/16 v3, 0x6d

    :goto_86c
    if-ge v2, v3, :cond_871

    const/16 v4, 0x438

    int-to-byte v7, v2

    aput-byte v7, v0, v4

    .line 1091
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v4

    const v7, 0x76fcd9a8

    if-ne v4, v7, :cond_870

    goto :goto_86d

    :cond_870
    add-int/lit8 v2, v2, 0x1

    goto :goto_86c

    :cond_871
    :goto_86d
    const/16 v2, -0x71

    :goto_86e
    if-ge v2, v1, :cond_873

    const/16 v3, 0x439

    int-to-byte v4, v2

    aput-byte v4, v0, v3

    .line 1092
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v3

    const v4, -0x27a207e7

    if-ne v3, v4, :cond_872

    goto :goto_86f

    :cond_872
    add-int/lit8 v2, v2, 0x1

    goto :goto_86e

    :cond_873
    :goto_86f
    const/16 v1, -0x38

    :goto_870
    const/16 v2, -0x27

    if-ge v1, v2, :cond_875

    const/16 v2, 0x43a

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1093
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, 0x1986b8bd

    if-ne v2, v3, :cond_874

    goto :goto_871

    :cond_874
    add-int/lit8 v1, v1, 0x1

    goto :goto_870

    :cond_875
    :goto_871
    const/4 v1, -0x1

    :goto_872
    if-ge v1, v9, :cond_877

    const/16 v2, 0x43b

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1094
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, -0x49ec0f26

    if-ne v2, v3, :cond_876

    goto :goto_873

    :cond_876
    add-int/lit8 v1, v1, 0x1

    goto :goto_872

    :cond_877
    :goto_873
    const/16 v1, -0x80

    :goto_874
    const/16 v2, -0x6f

    if-ge v1, v2, :cond_879

    const/16 v2, 0x43c

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1095
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, 0x515c3d92

    if-ne v2, v3, :cond_878

    goto :goto_875

    :cond_878
    add-int/lit8 v1, v1, 0x1

    goto :goto_874

    :cond_879
    :goto_875
    const/16 v1, 0x68

    :goto_876
    const/16 v2, 0x79

    if-ge v1, v2, :cond_87b

    const/16 v2, 0x43d

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1096
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, -0x1e84d50d

    if-ne v2, v3, :cond_87a

    goto :goto_877

    :cond_87a
    add-int/lit8 v1, v1, 0x1

    goto :goto_876

    :cond_87b
    :goto_877
    const/4 v1, -0x6

    :goto_878
    const/16 v2, 0xe

    if-ge v1, v2, :cond_87d

    const/16 v2, 0x43e

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1097
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, -0x52e850c

    if-ne v2, v3, :cond_87c

    goto :goto_879

    :cond_87c
    add-int/lit8 v1, v1, 0x1

    goto :goto_878

    :cond_87d
    :goto_879
    const/16 v1, 0x48

    :goto_87a
    const/16 v2, 0x4f

    if-ge v1, v2, :cond_87f

    const/16 v2, 0x43f

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1098
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, -0x1d003e37

    if-ne v2, v3, :cond_87e

    goto :goto_87b

    :cond_87e
    add-int/lit8 v1, v1, 0x1

    goto :goto_87a

    :cond_87f
    :goto_87b
    const/16 v1, 0x56

    :goto_87c
    const/16 v2, 0x6a

    if-ge v1, v2, :cond_881

    const/16 v2, 0x440

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1099
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, -0x15bfa627

    if-ne v2, v3, :cond_880

    goto :goto_87d

    :cond_880
    add-int/lit8 v1, v1, 0x1

    goto :goto_87c

    :cond_881
    :goto_87d
    const/16 v1, -0x6c

    :goto_87e
    const/16 v2, -0x5c

    if-ge v1, v2, :cond_883

    const/16 v2, 0x441

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1100
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, 0x5b2bf99e

    if-ne v2, v3, :cond_882

    goto :goto_87f

    :cond_882
    add-int/lit8 v1, v1, 0x1

    goto :goto_87e

    :cond_883
    :goto_87f
    const/16 v1, -0x2f

    :goto_880
    if-ge v1, v6, :cond_885

    const/16 v2, 0x442

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1101
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, -0x2bd840b3

    if-ne v2, v3, :cond_884

    goto :goto_881

    :cond_884
    add-int/lit8 v1, v1, 0x1

    goto :goto_880

    :cond_885
    :goto_881
    const/16 v1, -0x6d

    :goto_882
    const/16 v2, -0x69

    if-ge v1, v2, :cond_887

    const/16 v2, 0x443

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1102
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, 0x280c202d

    if-ne v2, v3, :cond_886

    goto :goto_883

    :cond_886
    add-int/lit8 v1, v1, 0x1

    goto :goto_882

    :cond_887
    :goto_883
    const/16 v1, -0x72

    :goto_884
    const/16 v2, -0x60

    if-ge v1, v2, :cond_889

    const/16 v2, 0x444

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1103
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, 0x2cc6abc9

    if-ne v2, v3, :cond_888

    goto :goto_885

    :cond_888
    add-int/lit8 v1, v1, 0x1

    goto :goto_884

    :cond_889
    :goto_885
    const/16 v1, -0x35

    :goto_886
    const/16 v2, -0x20

    if-ge v1, v2, :cond_88b

    const/16 v2, 0x445

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1104
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, -0x58707015

    if-ne v2, v3, :cond_88a

    goto :goto_887

    :cond_88a
    add-int/lit8 v1, v1, 0x1

    goto :goto_886

    :cond_88b
    :goto_887
    const/16 v1, 0x50

    :goto_888
    const/16 v2, 0x60

    if-ge v1, v2, :cond_88d

    const/16 v2, 0x446

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1105
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, 0x49c29325

    if-ne v2, v3, :cond_88c

    goto :goto_889

    :cond_88c
    add-int/lit8 v1, v1, 0x1

    goto :goto_888

    :cond_88d
    :goto_889
    const/16 v1, -0x80

    :goto_88a
    const/16 v2, -0x7b

    if-ge v1, v2, :cond_88f

    const/16 v2, 0x447

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1106
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, 0x1ce565e6

    if-ne v2, v3, :cond_88e

    goto :goto_88b

    :cond_88e
    add-int/lit8 v1, v1, 0x1

    goto :goto_88a

    :cond_88f
    :goto_88b
    const/16 v1, 0x5c

    :goto_88c
    const/16 v2, 0x66

    if-ge v1, v2, :cond_891

    const/16 v2, 0x448

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1107
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, 0x6805b018

    if-ne v2, v3, :cond_890

    goto :goto_88d

    :cond_890
    add-int/lit8 v1, v1, 0x1

    goto :goto_88c

    :cond_891
    :goto_88d
    const/16 v1, -0x7e

    :goto_88e
    const/16 v2, -0x6c

    if-ge v1, v2, :cond_893

    const/16 v2, 0x449

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1108
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, 0x55f2d486

    if-ne v2, v3, :cond_892

    goto :goto_88f

    :cond_892
    add-int/lit8 v1, v1, 0x1

    goto :goto_88e

    :cond_893
    :goto_88f
    const/16 v1, 0x2e

    :goto_890
    const/16 v2, 0x47

    if-ge v1, v2, :cond_895

    const/16 v2, 0x44a

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1109
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, -0x60b86c6d

    if-ne v2, v3, :cond_894

    goto :goto_891

    :cond_894
    add-int/lit8 v1, v1, 0x1

    goto :goto_890

    :cond_895
    :goto_891
    const/16 v1, 0x26

    :goto_892
    if-ge v1, v14, :cond_897

    const/16 v2, 0x44b

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1110
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, 0x407a7e06

    if-ne v2, v3, :cond_896

    goto :goto_893

    :cond_896
    add-int/lit8 v1, v1, 0x1

    goto :goto_892

    :cond_897
    :goto_893
    const/16 v1, 0x6b

    :goto_894
    const/16 v2, 0x7e

    if-ge v1, v2, :cond_899

    const/16 v2, 0x44c

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1111
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, -0x460e542d

    if-ne v2, v3, :cond_898

    goto :goto_895

    :cond_898
    add-int/lit8 v1, v1, 0x1

    goto :goto_894

    :cond_899
    :goto_895
    const/16 v1, -0x29

    :goto_896
    const/16 v2, -0x15

    if-ge v1, v2, :cond_89b

    const/16 v2, 0x44d

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1112
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, 0x1fb02d74

    if-ne v2, v3, :cond_89a

    goto :goto_897

    :cond_89a
    add-int/lit8 v1, v1, 0x1

    goto :goto_896

    :cond_89b
    :goto_897
    const/16 v1, -0x2c

    :goto_898
    const/16 v2, -0x26

    if-ge v1, v2, :cond_89d

    const/16 v2, 0x44e

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1113
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, -0xb7bb2ac

    if-ne v2, v3, :cond_89c

    goto :goto_899

    :cond_89c
    add-int/lit8 v1, v1, 0x1

    goto :goto_898

    :cond_89d
    :goto_899
    const/16 v1, -0x35

    :goto_89a
    if-ge v1, v6, :cond_89f

    const/16 v2, 0x44f

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1114
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, 0x4e96cec6

    if-ne v2, v3, :cond_89e

    goto :goto_89b

    :cond_89e
    add-int/lit8 v1, v1, 0x1

    goto :goto_89a

    :cond_89f
    :goto_89b
    const/16 v1, 0x64

    :goto_89c
    const/16 v2, 0x70

    if-ge v1, v2, :cond_8a1

    const/16 v2, 0x450

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1115
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, 0x3238e41b

    if-ne v2, v3, :cond_8a0

    goto :goto_89d

    :cond_8a0
    add-int/lit8 v1, v1, 0x1

    goto :goto_89c

    :cond_8a1
    :goto_89d
    const/16 v1, 0x4f

    :goto_89e
    const/16 v2, 0x5c

    if-ge v1, v2, :cond_8a3

    const/16 v2, 0x451

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1116
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, -0x591bcf56

    if-ne v2, v3, :cond_8a2

    goto :goto_89f

    :cond_8a2
    add-int/lit8 v1, v1, 0x1

    goto :goto_89e

    :cond_8a3
    :goto_89f
    const/16 v1, -0x2b

    :goto_8a0
    const/16 v2, -0xe

    if-ge v1, v2, :cond_8a5

    const/16 v2, 0x452

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1117
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, 0x53fdfaab

    if-ne v2, v3, :cond_8a4

    goto :goto_8a1

    :cond_8a4
    add-int/lit8 v1, v1, 0x1

    goto :goto_8a0

    :cond_8a5
    :goto_8a1
    const/16 v1, -0x5a

    :goto_8a2
    const/16 v2, -0x54

    if-ge v1, v2, :cond_8a7

    const/16 v2, 0x453

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1118
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, 0x62d9c96

    if-ne v2, v3, :cond_8a6

    goto :goto_8a3

    :cond_8a6
    add-int/lit8 v1, v1, 0x1

    goto :goto_8a2

    :cond_8a7
    :goto_8a3
    const/16 v1, -0x31

    :goto_8a4
    const/16 v2, -0x1d

    if-ge v1, v2, :cond_8a9

    const/16 v2, 0x454

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1119
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, 0xe94f907

    if-ne v2, v3, :cond_8a8

    goto :goto_8a5

    :cond_8a8
    add-int/lit8 v1, v1, 0x1

    goto :goto_8a4

    :cond_8a9
    :goto_8a5
    const/16 v1, -0x32

    if-ge v11, v1, :cond_8ab

    const/16 v1, 0x455

    int-to-byte v2, v11

    aput-byte v2, v0, v1

    .line 1120
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v1

    const v2, 0x3a969825

    if-ne v1, v2, :cond_8aa

    goto :goto_8a6

    :cond_8aa
    add-int/lit8 v11, v11, 0x1

    goto :goto_8a5

    :cond_8ab
    :goto_8a6
    const/16 v1, -0x80

    :goto_8a7
    const/16 v2, -0x72

    if-ge v1, v2, :cond_8ad

    const/16 v2, 0x456

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1121
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, -0x671eec71

    if-ne v2, v3, :cond_8ac

    goto :goto_8a8

    :cond_8ac
    add-int/lit8 v1, v1, 0x1

    goto :goto_8a7

    :cond_8ad
    :goto_8a8
    const/16 v1, 0x4b

    :goto_8a9
    const/16 v2, 0x53

    if-ge v1, v2, :cond_8af

    const/16 v2, 0x457

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1122
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, 0x462fe574

    if-ne v2, v3, :cond_8ae

    goto :goto_8aa

    :cond_8ae
    add-int/lit8 v1, v1, 0x1

    goto :goto_8a9

    :cond_8af
    :goto_8aa
    const/16 v1, 0x73

    :goto_8ab
    const/16 v2, 0x7c

    if-ge v1, v2, :cond_8b1

    const/16 v2, 0x458

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1123
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, 0x3951424f

    if-ne v2, v3, :cond_8b0

    goto :goto_8ac

    :cond_8b0
    add-int/lit8 v1, v1, 0x1

    goto :goto_8ab

    :cond_8b1
    :goto_8ac
    const/16 v1, -0x2c

    :goto_8ad
    const/16 v2, -0x14

    if-ge v1, v2, :cond_8b3

    const/16 v2, 0x459

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1124
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, -0x9c03efb

    if-ne v2, v3, :cond_8b2

    goto :goto_8ae

    :cond_8b2
    add-int/lit8 v1, v1, 0x1

    goto :goto_8ad

    :cond_8b3
    :goto_8ae
    const/16 v1, -0x6a

    :goto_8af
    const/16 v2, -0x5c

    if-ge v1, v2, :cond_8b5

    const/16 v2, 0x45a

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1125
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, 0x168db308

    if-ne v2, v3, :cond_8b4

    goto :goto_8b0

    :cond_8b4
    add-int/lit8 v1, v1, 0x1

    goto :goto_8af

    :cond_8b5
    :goto_8b0
    const/16 v1, -0x3a

    :goto_8b1
    if-ge v1, v10, :cond_8b7

    const/16 v2, 0x45b

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1126
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, -0x171c6843

    if-ne v2, v3, :cond_8b6

    goto :goto_8b2

    :cond_8b6
    add-int/lit8 v1, v1, 0x1

    goto :goto_8b1

    :cond_8b7
    :goto_8b2
    const/16 v1, -0x3c

    :goto_8b3
    const/16 v2, -0x2b

    if-ge v1, v2, :cond_8b9

    const/16 v2, 0x45c

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1127
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, 0x286858d2

    if-ne v2, v3, :cond_8b8

    goto :goto_8b4

    :cond_8b8
    add-int/lit8 v1, v1, 0x1

    goto :goto_8b3

    :cond_8b9
    :goto_8b4
    const/16 v1, 0x3d

    :goto_8b5
    const/16 v2, 0x54

    if-ge v1, v2, :cond_8bb

    const/16 v2, 0x45d

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1128
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, -0x7ab859c6

    if-ne v2, v3, :cond_8ba

    goto :goto_8b6

    :cond_8ba
    add-int/lit8 v1, v1, 0x1

    goto :goto_8b5

    :cond_8bb
    :goto_8b6
    const/16 v1, -0x9

    :goto_8b7
    const/16 v2, 0xd

    if-ge v1, v2, :cond_8bd

    const/16 v2, 0x45e

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1129
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, -0x5705a4fb

    if-ne v2, v3, :cond_8bc

    goto :goto_8b8

    :cond_8bc
    add-int/lit8 v1, v1, 0x1

    goto :goto_8b7

    :cond_8bd
    :goto_8b8
    const/16 v1, 0x43

    :goto_8b9
    const/16 v2, 0x5a

    if-ge v1, v2, :cond_8bf

    const/16 v2, 0x45f

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1130
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, 0x2c3c4a42

    if-ne v2, v3, :cond_8be

    goto :goto_8ba

    :cond_8be
    add-int/lit8 v1, v1, 0x1

    goto :goto_8b9

    :cond_8bf
    :goto_8ba
    const/16 v1, 0x66

    :goto_8bb
    const/16 v2, 0x71

    if-ge v1, v2, :cond_8c1

    const/16 v2, 0x460

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1131
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, -0x413cd328

    if-ne v2, v3, :cond_8c0

    goto :goto_8bc

    :cond_8c0
    add-int/lit8 v1, v1, 0x1

    goto :goto_8bb

    :cond_8c1
    :goto_8bc
    const/16 v1, 0x17

    :goto_8bd
    const/16 v2, 0x23

    if-ge v1, v2, :cond_8c3

    const/16 v2, 0x461

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1132
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, -0x7b71223d

    if-ne v2, v3, :cond_8c2

    goto :goto_8be

    :cond_8c2
    add-int/lit8 v1, v1, 0x1

    goto :goto_8bd

    :cond_8c3
    :goto_8be
    const/16 v1, -0x16

    :goto_8bf
    const/4 v2, -0x2

    if-ge v1, v2, :cond_8c5

    const/16 v2, 0x462

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1133
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, 0x63828d9b

    if-ne v2, v3, :cond_8c4

    goto :goto_8c0

    :cond_8c4
    add-int/lit8 v1, v1, 0x1

    goto :goto_8bf

    :cond_8c5
    :goto_8c0
    const/16 v1, 0x49

    :goto_8c1
    const/16 v2, 0x5a

    if-ge v1, v2, :cond_8c7

    const/16 v2, 0x463

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1134
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, -0x6934571c

    if-ne v2, v3, :cond_8c6

    goto :goto_8c2

    :cond_8c6
    add-int/lit8 v1, v1, 0x1

    goto :goto_8c1

    :cond_8c7
    :goto_8c2
    const/4 v1, 0x3

    :goto_8c3
    if-ge v1, v5, :cond_8c9

    const/16 v2, 0x464

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1135
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, -0x2939150

    if-ne v2, v3, :cond_8c8

    goto :goto_8c4

    :cond_8c8
    add-int/lit8 v1, v1, 0x1

    goto :goto_8c3

    :cond_8c9
    :goto_8c4
    const/16 v1, -0x78

    :goto_8c5
    const/16 v2, -0x66

    if-ge v1, v2, :cond_8cb

    const/16 v2, 0x465

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1136
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, -0x54842d5a

    if-ne v2, v3, :cond_8ca

    goto :goto_8c6

    :cond_8ca
    add-int/lit8 v1, v1, 0x1

    goto :goto_8c5

    :cond_8cb
    :goto_8c6
    const/4 v1, -0x5

    :goto_8c7
    if-ge v1, v9, :cond_8cd

    const/16 v2, 0x466

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1137
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, 0x37d699f6

    if-ne v2, v3, :cond_8cc

    goto :goto_8c8

    :cond_8cc
    add-int/lit8 v1, v1, 0x1

    goto :goto_8c7

    :cond_8cd
    :goto_8c8
    const/16 v1, -0x3a

    :goto_8c9
    const/16 v2, -0x21

    if-ge v1, v2, :cond_8cf

    const/16 v2, 0x467

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1138
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, -0x69baa2c9

    if-ne v2, v3, :cond_8ce

    goto :goto_8ca

    :cond_8ce
    add-int/lit8 v1, v1, 0x1

    goto :goto_8c9

    :cond_8cf
    :goto_8ca
    const/16 v1, 0x72

    :goto_8cb
    const/16 v2, 0x78

    if-ge v1, v2, :cond_8d1

    const/16 v2, 0x468

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1139
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, 0x7c6cb1e1

    if-ne v2, v3, :cond_8d0

    goto :goto_8cc

    :cond_8d0
    add-int/lit8 v1, v1, 0x1

    goto :goto_8cb

    :cond_8d1
    :goto_8cc
    const/16 v1, 0x1c

    :goto_8cd
    const/16 v2, 0x2a

    if-ge v1, v2, :cond_8d3

    const/16 v2, 0x469

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1140
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, 0x1c6ed773

    if-ne v2, v3, :cond_8d2

    goto :goto_8ce

    :cond_8d2
    add-int/lit8 v1, v1, 0x1

    goto :goto_8cd

    :cond_8d3
    :goto_8ce
    const/16 v1, -0x3c

    :goto_8cf
    if-ge v1, v6, :cond_8d5

    const/16 v2, 0x46a

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1141
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, -0x30830cb1

    if-ne v2, v3, :cond_8d4

    goto :goto_8d0

    :cond_8d4
    add-int/lit8 v1, v1, 0x1

    goto :goto_8cf

    :cond_8d5
    :goto_8d0
    const/16 v1, 0x26

    :goto_8d1
    const/16 v2, 0x39

    if-ge v1, v2, :cond_8d7

    const/16 v2, 0x46b

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1142
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, -0x72e8dd51

    if-ne v2, v3, :cond_8d6

    goto :goto_8d2

    :cond_8d6
    add-int/lit8 v1, v1, 0x1

    goto :goto_8d1

    :cond_8d7
    :goto_8d2
    const/16 v1, -0x62

    :goto_8d3
    const/16 v2, -0x4b

    if-ge v1, v2, :cond_8d9

    const/16 v2, 0x46c

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1143
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, -0x3ee89fe4

    if-ne v2, v3, :cond_8d8

    goto :goto_8d4

    :cond_8d8
    add-int/lit8 v1, v1, 0x1

    goto :goto_8d3

    :cond_8d9
    :goto_8d4
    const/16 v1, -0x44

    :goto_8d5
    const/16 v2, -0x3a

    if-ge v1, v2, :cond_8db

    const/16 v2, 0x46d

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 1144
    invoke-static {v0}, Lcom/narvii/video/faceunity/authpack;->sha1_32([B)I

    move-result v2

    const v3, 0x6806076d

    if-ne v2, v3, :cond_8da

    goto :goto_8d6

    :cond_8da
    add-int/lit8 v1, v1, 0x1

    goto :goto_8d5

    :cond_8db
    :goto_8d6
    return-object v0
.end method

.method public static sha1_32([B)I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SHA1"

    .line 7
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte p0, p0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 p0, p0, 0xff

    shl-int/2addr p0, v0

    add-int/2addr v1, p0

    return v1

    :catch_0
    return v0
.end method
