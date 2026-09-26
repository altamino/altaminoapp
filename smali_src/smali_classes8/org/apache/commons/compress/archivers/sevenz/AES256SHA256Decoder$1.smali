.class Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;->decode(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[B)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private cipherInputStream:Ljavax/crypto/CipherInputStream;

.field private isInitialized:Z

.field final synthetic this$0:Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;

.field final synthetic val$archiveName:Ljava/lang/String;

.field final synthetic val$coder:Lorg/apache/commons/compress/archivers/sevenz/Coder;

.field final synthetic val$in:Ljava/io/InputStream;

.field final synthetic val$passwordBytes:[B


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;Lorg/apache/commons/compress/archivers/sevenz/Coder;Ljava/lang/String;[BLjava/io/InputStream;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->this$0:Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;

    .line 3
    .line 4
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->val$coder:Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 5
    .line 6
    iput-object p3, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->val$archiveName:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->val$passwordBytes:[B

    .line 9
    .line 10
    iput-object p5, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->val$in:Ljava/io/InputStream;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 14
    const/4 p1, 0x0

    .line 15
    .line 16
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->isInitialized:Z

    .line 17
    const/4 p1, 0x0

    .line 18
    .line 19
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    .line 20
    return-void
.end method

.method private init()Ljavax/crypto/CipherInputStream;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    iget-boolean v0, v1, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->isInitialized:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    .line 9
    return-object v0

    .line 10
    .line 11
    :cond_0
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->val$coder:Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 12
    .line 13
    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    aget-byte v3, v0, v2

    .line 17
    .line 18
    and-int/lit16 v4, v3, 0xff

    .line 19
    .line 20
    const/16 v5, 0x3f

    .line 21
    and-int/2addr v3, v5

    .line 22
    const/4 v6, 0x1

    .line 23
    .line 24
    aget-byte v7, v0, v6

    .line 25
    .line 26
    and-int/lit16 v8, v7, 0xff

    .line 27
    .line 28
    shr-int/lit8 v9, v4, 0x6

    .line 29
    and-int/2addr v9, v6

    .line 30
    .line 31
    and-int/lit8 v7, v7, 0xf

    .line 32
    add-int/2addr v9, v7

    .line 33
    .line 34
    shr-int/lit8 v4, v4, 0x7

    .line 35
    and-int/2addr v4, v6

    .line 36
    .line 37
    shr-int/lit8 v7, v8, 0x4

    .line 38
    add-int/2addr v4, v7

    .line 39
    .line 40
    add-int/lit8 v7, v4, 0x2

    .line 41
    .line 42
    add-int v8, v7, v9

    .line 43
    array-length v10, v0

    .line 44
    .line 45
    if-gt v8, v10, :cond_6

    .line 46
    .line 47
    new-array v8, v4, [B

    .line 48
    const/4 v10, 0x2

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v10, v8, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    .line 53
    const/16 v0, 0x10

    .line 54
    .line 55
    new-array v0, v0, [B

    .line 56
    .line 57
    iget-object v11, v1, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->val$coder:Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 58
    .line 59
    iget-object v11, v11, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    .line 60
    .line 61
    .line 62
    invoke-static {v11, v7, v0, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    .line 64
    iget-object v7, v1, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->val$passwordBytes:[B

    .line 65
    .line 66
    if-eqz v7, :cond_5

    .line 67
    .line 68
    if-ne v3, v5, :cond_1

    .line 69
    .line 70
    const/16 v3, 0x20

    .line 71
    .line 72
    new-array v3, v3, [B

    .line 73
    .line 74
    .line 75
    invoke-static {v8, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    .line 77
    iget-object v5, v1, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->val$passwordBytes:[B

    .line 78
    array-length v7, v5

    .line 79
    .line 80
    rsub-int/lit8 v8, v4, 0x20

    .line 81
    .line 82
    .line 83
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 84
    move-result v7

    .line 85
    .line 86
    .line 87
    invoke-static {v5, v2, v3, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    goto :goto_3

    .line 89
    .line 90
    :cond_1
    :try_start_0
    const-string v4, "SHA-256"

    .line 91
    .line 92
    .line 93
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 94
    move-result-object v4
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    .line 96
    const/16 v5, 0x8

    .line 97
    .line 98
    new-array v7, v5, [B

    .line 99
    .line 100
    const-wide/16 v11, 0x0

    .line 101
    .line 102
    :goto_0
    const-wide/16 v13, 0x1

    .line 103
    .line 104
    shl-long v15, v13, v3

    .line 105
    .line 106
    cmp-long v9, v11, v15

    .line 107
    .line 108
    if-gez v9, :cond_4

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 112
    .line 113
    iget-object v9, v1, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->val$passwordBytes:[B

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 120
    move v9, v2

    .line 121
    .line 122
    :goto_1
    if-ge v9, v5, :cond_3

    .line 123
    .line 124
    aget-byte v15, v7, v9

    .line 125
    add-int/2addr v15, v6

    .line 126
    int-to-byte v15, v15

    .line 127
    .line 128
    aput-byte v15, v7, v9

    .line 129
    .line 130
    if-eqz v15, :cond_2

    .line 131
    goto :goto_2

    .line 132
    .line 133
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 134
    goto :goto_1

    .line 135
    :cond_3
    :goto_2
    add-long/2addr v11, v13

    .line 136
    goto :goto_0

    .line 137
    .line 138
    .line 139
    :cond_4
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    .line 140
    move-result-object v3

    .line 141
    .line 142
    :goto_3
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    .line 143
    .line 144
    const-string v4, "AES"

    .line 145
    .line 146
    .line 147
    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 148
    .line 149
    :try_start_1
    const-string v3, "AES/CBC/NoPadding"

    .line 150
    .line 151
    .line 152
    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 153
    move-result-object v3

    .line 154
    .line 155
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    .line 156
    .line 157
    .line 158
    invoke-direct {v4, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3, v10, v2, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 162
    .line 163
    new-instance v0, Ljavax/crypto/CipherInputStream;

    .line 164
    .line 165
    iget-object v2, v1, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->val$in:Ljava/io/InputStream;

    .line 166
    .line 167
    .line 168
    invoke-direct {v0, v2, v3}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 169
    .line 170
    iput-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    .line 171
    .line 172
    iput-boolean v6, v1, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->isInitialized:Z
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 173
    return-object v0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .line 176
    new-instance v2, Ljava/io/IOException;

    .line 177
    .line 178
    const-string v3, "Decryption error (do you have the JCE Unlimited Strength Jurisdiction Policy Files installed?)"

    .line 179
    .line 180
    .line 181
    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    throw v2

    .line 183
    :catch_1
    move-exception v0

    .line 184
    .line 185
    new-instance v2, Ljava/io/IOException;

    .line 186
    .line 187
    const-string v3, "SHA-256 is unsupported by your Java implementation"

    .line 188
    .line 189
    .line 190
    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    throw v2

    .line 192
    .line 193
    :cond_5
    new-instance v0, Lorg/apache/commons/compress/PasswordRequiredException;

    .line 194
    .line 195
    iget-object v2, v1, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->val$archiveName:Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    invoke-direct {v0, v2}, Lorg/apache/commons/compress/PasswordRequiredException;-><init>(Ljava/lang/String;)V

    .line 199
    throw v0

    .line 200
    .line 201
    :cond_6
    new-instance v0, Ljava/io/IOException;

    .line 202
    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    const-string v3, "Salt size + IV size too long in "

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    iget-object v3, v1, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->val$archiveName:Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    move-result-object v2

    .line 221
    .line 222
    .line 223
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 224
    throw v0
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->init()Ljavax/crypto/CipherInputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/CipherInputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->init()Ljavax/crypto/CipherInputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherInputStream;->read([BII)I

    move-result p1

    return p1
.end method
