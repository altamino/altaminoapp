.class public Lcom/ss/android/tea/common/deviceregister/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/tea/common/deviceregister/d$a;
    }
.end annotation


# static fields
.field private static volatile a:Z

.field private static volatile b:Z

.field private static final q:Ljava/lang/Object;

.field private static final r:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile u:Ljava/lang/String;

.field private static w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/android/tea/common/deviceregister/a$a;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Landroid/content/SharedPreferences;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lorg/json/JSONObject;

.field private final k:Ljava/lang/Object;

.field private l:Z

.field private m:J

.field private n:I

.field private o:J

.field private p:J

.field private s:J

.field private v:Lcom/ss/android/tea/common/deviceregister/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/ss/android/tea/common/deviceregister/d;->q:Ljava/lang/Object;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lcom/ss/android/tea/common/deviceregister/d;->r:Ljava/lang/ThreadLocal;

    .line 15
    .line 16
    new-instance v0, Ljava/util/HashMap;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    sput-object v0, Lcom/ss/android/tea/common/deviceregister/d;->t:Ljava/util/Map;

    .line 22
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    sput-object v0, Lcom/ss/android/tea/common/deviceregister/d;->w:Ljava/util/List;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/ss/android/tea/common/deviceregister/d;->k:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/ss/android/tea/common/deviceregister/d;->c:Landroid/content/Context;

    .line 13
    .line 14
    const-string v0, "applog_stats"

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    iput-object p1, p0, Lcom/ss/android/tea/common/deviceregister/d;->d:Landroid/content/SharedPreferences;

    .line 22
    return-void
.end method

.method static synthetic A(Lcom/ss/android/tea/common/deviceregister/d;J)J
    .locals 0

    .line 1
    .line 2
    iput-wide p1, p0, Lcom/ss/android/tea/common/deviceregister/d;->m:J

    .line 3
    return-wide p1
.end method

.method private C(Z)V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/ss/android/tea/common/deviceregister/d;->w:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    check-cast v1, Lcom/ss/android/tea/common/deviceregister/a$a;

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :cond_1
    :try_start_0
    invoke-interface {v1, p1}, Lcom/ss/android/tea/common/deviceregister/a$a;->d(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    return-void
.end method

.method static synthetic D(Lcom/ss/android/tea/common/deviceregister/d;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/ss/android/tea/common/deviceregister/d;->l:Z

    .line 3
    return p0
.end method

.method static synthetic E(Lcom/ss/android/tea/common/deviceregister/d;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/ss/android/tea/common/deviceregister/d;->n:I

    .line 3
    return p0
.end method

.method static synthetic G(Lcom/ss/android/tea/common/deviceregister/d;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/ss/android/tea/common/deviceregister/d;->o:J

    .line 3
    return-wide v0
.end method

.method static synthetic I(Lcom/ss/android/tea/common/deviceregister/d;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/ss/android/tea/common/deviceregister/d;->m:J

    .line 3
    return-wide v0
.end method

.method static synthetic K(Lcom/ss/android/tea/common/deviceregister/d;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/ss/android/tea/common/deviceregister/d;->p:J

    .line 3
    return-wide v0
.end method

.method static synthetic M(Lcom/ss/android/tea/common/deviceregister/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/ss/android/tea/common/deviceregister/d;->k:Ljava/lang/Object;

    .line 3
    return-object p0
.end method

.method static synthetic O(Lcom/ss/android/tea/common/deviceregister/d;)Landroid/content/Context;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/ss/android/tea/common/deviceregister/d;->c:Landroid/content/Context;

    .line 3
    return-object p0
.end method

.method static synthetic Q(Lcom/ss/android/tea/common/deviceregister/d;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/ss/android/tea/common/deviceregister/d;->s:J

    .line 3
    return-wide v0
.end method

.method static synthetic T(Lcom/ss/android/tea/common/deviceregister/d;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/ss/android/tea/common/deviceregister/d;->e0()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic U(Lcom/ss/android/tea/common/deviceregister/d;)Landroid/content/SharedPreferences;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/ss/android/tea/common/deviceregister/d;->d:Landroid/content/SharedPreferences;

    .line 3
    return-object p0
.end method

.method static synthetic V()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ss/android/tea/common/deviceregister/d;->b:Z

    return v0
.end method

.method static synthetic W(Lcom/ss/android/tea/common/deviceregister/d;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/ss/android/tea/common/deviceregister/d;->i:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic X()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/tea/common/deviceregister/d;->t:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic Y()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/tea/common/deviceregister/d;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Z(Lcom/ss/android/tea/common/deviceregister/d;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/ss/android/tea/common/deviceregister/d;->h:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic a(Lcom/ss/android/tea/common/deviceregister/d;I)I
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/ss/android/tea/common/deviceregister/d;->n:I

    .line 3
    return p1
.end method

.method static synthetic a0()Ljava/lang/ThreadLocal;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/tea/common/deviceregister/d;->r:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic b(Lcom/ss/android/tea/common/deviceregister/d;J)J
    .locals 0

    .line 1
    .line 2
    iput-wide p1, p0, Lcom/ss/android/tea/common/deviceregister/d;->p:J

    .line 3
    return-wide p1
.end method

.method static synthetic b0(Lcom/ss/android/tea/common/deviceregister/d;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/ss/android/tea/common/deviceregister/d;->f0()V

    .line 4
    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/tea/common/deviceregister/d;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c0()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/tea/common/deviceregister/d;->q:Ljava/lang/Object;

    return-object v0
.end method

.method private static d(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrulyRandom"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "openudid"

    .line 3
    .line 4
    const-string v1, "RegisterServiceController"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    move-result-object v3

    .line 10
    .line 11
    const-string v4, "android_id"

    .line 12
    .line 13
    .line 14
    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v3

    .line 18
    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    const-string v5, "exception when getting ANDROID_ID: "

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v3}, Lcom/bytedance/tea/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    move-object v3, v2

    .line 39
    .line 40
    :goto_0
    const/16 v4, 0xd

    .line 41
    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    :try_start_1
    const-string v5, "9774d56d682e549c"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v5

    .line 49
    .line 50
    if-nez v5, :cond_0

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 54
    move-result v5

    .line 55
    .line 56
    if-ge v5, v4, :cond_6

    .line 57
    goto :goto_1

    .line 58
    :catch_1
    move-exception p0

    .line 59
    goto :goto_3

    .line 60
    .line 61
    :cond_0
    :goto_1
    const-string v5, "snssdk_openudid"

    .line 62
    const/4 v6, 0x0

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 66
    move-result-object p0

    .line 67
    .line 68
    .line 69
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object v2

    .line 71
    .line 72
    .line 73
    invoke-static {v2}, Lcom/ss/android/tea/common/deviceregister/d;->y(Ljava/lang/String;)Z

    .line 74
    move-result v5

    .line 75
    .line 76
    if-nez v5, :cond_5

    .line 77
    .line 78
    new-instance v2, Ljava/security/SecureRandom;

    .line 79
    .line 80
    .line 81
    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 82
    .line 83
    new-instance v5, Ljava/math/BigInteger;

    .line 84
    .line 85
    const/16 v7, 0x40

    .line 86
    .line 87
    .line 88
    invoke-direct {v5, v7, v2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 89
    .line 90
    const/16 v2, 0x10

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    .line 94
    move-result-object v2

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    .line 98
    move-result v5

    .line 99
    .line 100
    const/16 v6, 0x2d

    .line 101
    .line 102
    if-ne v5, v6, :cond_1

    .line 103
    const/4 v5, 0x1

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 107
    move-result-object v2

    .line 108
    .line 109
    .line 110
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 111
    move-result v5

    .line 112
    sub-int/2addr v4, v5

    .line 113
    .line 114
    if-lez v4, :cond_3

    .line 115
    .line 116
    new-instance v5, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    :goto_2
    if-lez v4, :cond_2

    .line 122
    .line 123
    const/16 v6, 0x46

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    add-int/lit8 v4, v4, -0x1

    .line 129
    goto :goto_2

    .line 130
    .line 131
    .line 132
    :cond_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object v2

    .line 137
    .line 138
    :cond_3
    if-eqz p1, :cond_4

    .line 139
    .line 140
    const-string p1, "openudid.dat"

    .line 141
    .line 142
    .line 143
    invoke-static {p1, v2}, Lcom/ss/android/tea/common/deviceregister/d;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    move-result-object p1

    .line 145
    .line 146
    .line 147
    invoke-static {p1}, Lcom/ss/android/tea/common/deviceregister/d;->y(Ljava/lang/String;)Z

    .line 148
    move-result v4

    .line 149
    .line 150
    if-eqz v4, :cond_4

    .line 151
    move-object v2, p1

    .line 152
    .line 153
    .line 154
    :cond_4
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 155
    move-result-object p0

    .line 156
    .line 157
    .line 158
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 159
    .line 160
    .line 161
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 162
    :cond_5
    move-object v3, v2

    .line 163
    goto :goto_4

    .line 164
    .line 165
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    const-string v0, "exception when making openudid: "

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    move-result-object p0

    .line 181
    .line 182
    .line 183
    invoke-static {v1, p0}, Lcom/bytedance/tea/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_6
    :goto_4
    return-object v3
.end method

.method private d0()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget-object v2, p0, Lcom/ss/android/tea/common/deviceregister/d;->d:Landroid/content/SharedPreferences;

    .line 7
    .line 8
    const-string v3, "last_config_version"

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    .line 12
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 13
    move-result v2

    .line 14
    .line 15
    iput v2, p0, Lcom/ss/android/tea/common/deviceregister/d;->n:I

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/ss/android/tea/common/deviceregister/e;->a()I

    .line 19
    move-result v3

    .line 20
    .line 21
    if-ne v2, v3, :cond_1

    .line 22
    .line 23
    iget-object v2, p0, Lcom/ss/android/tea/common/deviceregister/d;->d:Landroid/content/SharedPreferences;

    .line 24
    .line 25
    const-string v3, "last_config_time"

    .line 26
    .line 27
    const-wide/16 v4, 0x0

    .line 28
    .line 29
    .line 30
    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 31
    move-result-wide v2

    .line 32
    .line 33
    cmp-long v4, v2, v0

    .line 34
    .line 35
    if-lez v4, :cond_0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-wide v0, v2

    .line 38
    .line 39
    :goto_0
    iput-wide v0, p0, Lcom/ss/android/tea/common/deviceregister/d;->m:J

    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lcom/ss/android/tea/common/deviceregister/d;->d:Landroid/content/SharedPreferences;

    .line 42
    .line 43
    const-string v1, "install_id"

    .line 44
    .line 45
    const-string v2, ""

    .line 46
    .line 47
    .line 48
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    iput-object v0, p0, Lcom/ss/android/tea/common/deviceregister/d;->i:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private e(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/ss/android/tea/common/deviceregister/d;->g:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/ss/android/tea/common/deviceregister/d;->g:Ljava/lang/String;

    .line 13
    return-object p1

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    :try_start_0
    const-string v1, "device_id"

    .line 19
    .line 20
    const-string v2, ""

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move-object p1, v0

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-static {p1}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 32
    move-result v1

    .line 33
    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    iget-object v1, p0, Lcom/ss/android/tea/common/deviceregister/d;->g:Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v1}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 40
    move-result v1

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    iget-object p1, p0, Lcom/ss/android/tea/common/deviceregister/d;->g:Ljava/lang/String;

    .line 45
    return-object p1

    .line 46
    .line 47
    :cond_2
    iput-object p1, p0, Lcom/ss/android/tea/common/deviceregister/d;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return-object p1

    .line 49
    .line 50
    .line 51
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    return-object v0
.end method

.method private e0()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/ss/android/tea/common/deviceregister/b;->f()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method static synthetic f(Lcom/ss/android/tea/common/deviceregister/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/ss/android/tea/common/deviceregister/d;->i:Ljava/lang/String;

    .line 3
    return-object p1
.end method

.method private f0()V
    .locals 5

    .line 1
    .line 2
    const-string v0, "install_id"

    .line 3
    .line 4
    iget-object v1, p0, Lcom/ss/android/tea/common/deviceregister/d;->i:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/ss/android/tea/common/deviceregister/e;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    .line 9
    const-string v0, "device_id"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/ss/android/tea/common/deviceregister/d;->F()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/ss/android/tea/common/deviceregister/e;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    .line 18
    const-string v0, "ssid"

    .line 19
    .line 20
    iget-object v1, p0, Lcom/ss/android/tea/common/deviceregister/d;->h:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/ss/android/tea/common/deviceregister/e;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    .line 25
    sget-object v0, Lcom/ss/android/tea/common/deviceregister/d;->w:Ljava/util/List;

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v1

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 42
    .line 43
    if-nez v1, :cond_0

    .line 44
    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    check-cast v1, Lcom/ss/android/tea/common/deviceregister/a$a;

    .line 54
    .line 55
    if-nez v1, :cond_1

    .line 56
    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 59
    goto :goto_0

    .line 60
    .line 61
    .line 62
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/ss/android/tea/common/deviceregister/d;->F()Ljava/lang/String;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    iget-object v3, p0, Lcom/ss/android/tea/common/deviceregister/d;->i:Ljava/lang/String;

    .line 66
    .line 67
    iget-object v4, p0, Lcom/ss/android/tea/common/deviceregister/d;->h:Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    invoke-interface {v1, v2, v3, v4}, Lcom/ss/android/tea/common/deviceregister/a$a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    return-void
.end method

.method private static g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "mounted"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    return-object p1

    .line 14
    .line 15
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, "/Android/data/com.snssdk.api/cache"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v2, "/"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 59
    const/4 v1, 0x0

    .line 60
    .line 61
    :try_start_0
    new-instance v2, Ljava/io/File;

    .line 62
    .line 63
    .line 64
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 68
    move-result v0

    .line 69
    .line 70
    if-nez v0, :cond_1

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 74
    move-result v0

    .line 75
    .line 76
    if-nez v0, :cond_1

    .line 77
    return-object p1

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    move-object v0, v1

    .line 80
    .line 81
    goto/16 :goto_1

    .line 82
    :catch_0
    move-exception p0

    .line 83
    move-object v0, v1

    .line 84
    goto :goto_0

    .line 85
    .line 86
    :cond_1
    new-instance v0, Ljava/io/File;

    .line 87
    .line 88
    .line 89
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    new-instance p0, Ljava/io/RandomAccessFile;

    .line 92
    .line 93
    const-string v2, "rwd"

    .line 94
    .line 95
    .line 96
    invoke-direct {p0, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .line 98
    .line 99
    :try_start_1
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 100
    move-result-object v2

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    .line 104
    move-result-object v1

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 108
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 109
    .line 110
    const-string v2, "UTF-8"

    .line 111
    .line 112
    if-eqz v0, :cond_3

    .line 113
    .line 114
    const/16 v0, 0x81

    .line 115
    .line 116
    :try_start_2
    new-array v3, v0, [B

    .line 117
    const/4 v4, 0x0

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v3, v4, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 121
    move-result v5

    .line 122
    .line 123
    if-lez v5, :cond_3

    .line 124
    .line 125
    if-ge v5, v0, :cond_3

    .line 126
    .line 127
    new-instance v0, Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    invoke-direct {v0, v3, v4, v5, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-static {v0}, Lcom/ss/android/tea/common/deviceregister/d;->y(Ljava/lang/String;)Z

    .line 134
    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 135
    .line 136
    if-eqz v3, :cond_3

    .line 137
    .line 138
    if-eqz v1, :cond_2

    .line 139
    .line 140
    .line 141
    :try_start_3
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 142
    .line 143
    .line 144
    :catch_1
    :cond_2
    :try_start_4
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 145
    :catch_2
    return-object v0

    .line 146
    :catchall_1
    move-exception p1

    .line 147
    move-object v0, p0

    .line 148
    move-object p0, p1

    .line 149
    goto :goto_1

    .line 150
    :catch_3
    move-exception v0

    .line 151
    move-object v6, v0

    .line 152
    move-object v0, p0

    .line 153
    move-object p0, v6

    .line 154
    goto :goto_0

    .line 155
    .line 156
    .line 157
    :cond_3
    :try_start_5
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 158
    move-result-object v0

    .line 159
    .line 160
    const-wide/16 v2, 0x0

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 167
    .line 168
    if-eqz v1, :cond_4

    .line 169
    .line 170
    .line 171
    :try_start_6
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 172
    .line 173
    .line 174
    :catch_4
    :cond_4
    :try_start_7
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 175
    :catch_5
    return-object p1

    .line 176
    .line 177
    :goto_0
    :try_start_8
    const-string v2, "RegisterServiceController"

    .line 178
    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    const-string v4, "load openudid exception "

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    move-result-object p0

    .line 195
    .line 196
    .line 197
    invoke-static {v2, p0}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 198
    .line 199
    if-eqz v1, :cond_5

    .line 200
    .line 201
    .line 202
    :try_start_9
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 203
    .line 204
    :catch_6
    :cond_5
    if-eqz v0, :cond_6

    .line 205
    .line 206
    .line 207
    :try_start_a
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 208
    :catch_7
    :cond_6
    return-object p1

    .line 209
    :catchall_2
    move-exception p0

    .line 210
    .line 211
    :goto_1
    if-eqz v1, :cond_7

    .line 212
    .line 213
    .line 214
    :try_start_b
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 215
    .line 216
    :catch_8
    :cond_7
    if-eqz v0, :cond_8

    .line 217
    .line 218
    .line 219
    :try_start_c
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    .line 220
    :catch_9
    :cond_8
    throw p0
.end method

.method static synthetic h(Lcom/ss/android/tea/common/deviceregister/d;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/ss/android/tea/common/deviceregister/d;->j:Lorg/json/JSONObject;

    .line 3
    return-object p0
.end method

.method private i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/ss/android/tea/common/deviceregister/b;->g()Lcom/ss/android/tea/common/deviceregister/a$b;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    move-object v1, p1

    .line 8
    move-object v2, p2

    .line 9
    move-object v3, p3

    .line 10
    move-object v4, p4

    .line 11
    move-wide v5, p5

    .line 12
    .line 13
    move-wide/from16 v7, p7

    .line 14
    .line 15
    move-object/from16 v9, p9

    .line 16
    .line 17
    .line 18
    invoke-interface/range {v0 .. v9}, Lcom/ss/android/tea/common/deviceregister/a$b;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V

    .line 19
    :cond_0
    return-void
.end method

.method public static j(Lcom/ss/android/tea/common/deviceregister/a$a;)V
    .locals 2

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    sget-object v0, Lcom/ss/android/tea/common/deviceregister/d;->w:Ljava/util/List;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    return-void
.end method

.method static synthetic k(Lcom/ss/android/tea/common/deviceregister/d;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct/range {p0 .. p9}, Lcom/ss/android/tea/common/deviceregister/d;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V

    .line 4
    return-void
.end method

.method static synthetic l(Lcom/ss/android/tea/common/deviceregister/d;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/ss/android/tea/common/deviceregister/d;->p(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method static synthetic m(Lcom/ss/android/tea/common/deviceregister/d;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/ss/android/tea/common/deviceregister/d;->C(Z)V

    .line 4
    return-void
.end method

.method static synthetic n(Lcom/ss/android/tea/common/deviceregister/d;ZZ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/ss/android/tea/common/deviceregister/d;->r(ZZ)V

    .line 4
    return-void
.end method

.method public static o(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    sget-object v0, Lcom/ss/android/tea/common/deviceregister/d;->u:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    sput-object p0, Lcom/ss/android/tea/common/deviceregister/d;->u:Ljava/lang/String;

    .line 18
    :cond_1
    :goto_0
    return-void
.end method

.method private p(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/ss/android/tea/common/deviceregister/b;->g()Lcom/ss/android/tea/common/deviceregister/a$b;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Lcom/ss/android/tea/common/deviceregister/a$b;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 10
    :cond_0
    return-void
.end method

.method public static q(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lcom/ss/android/tea/common/deviceregister/d;->t:Ljava/util/Map;

    .line 12
    monitor-enter v0

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0

    .line 21
    :cond_1
    :goto_0
    return-void
.end method

.method private r(ZZ)V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/ss/android/tea/common/deviceregister/d;->w:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    check-cast v1, Lcom/ss/android/tea/common/deviceregister/a$a;

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :cond_1
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/ss/android/tea/common/deviceregister/a$a;->c(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    return-void
.end method

.method static synthetic s(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/ss/android/tea/common/deviceregister/d;->b:Z

    return p0
.end method

.method static synthetic t(Lcom/ss/android/tea/common/deviceregister/d;J)J
    .locals 0

    .line 1
    .line 2
    iput-wide p1, p0, Lcom/ss/android/tea/common/deviceregister/d;->s:J

    .line 3
    return-wide p1
.end method

.method private static v(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    const-string v0, "clientudid"

    .line 3
    .line 4
    :try_start_0
    const-string v1, "snssdk_openudid"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 9
    move-result-object p0

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/ss/android/tea/common/deviceregister/d;->y(Ljava/lang/String;)Z

    .line 18
    move-result v2

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    const-string v2, "clientudid.dat"

    .line 31
    .line 32
    .line 33
    invoke-static {v2, v1}, Lcom/ss/android/tea/common/deviceregister/d;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    invoke-static {v2}, Lcom/ss/android/tea/common/deviceregister/d;->y(Ljava/lang/String;)Z

    .line 38
    move-result v3

    .line 39
    .line 40
    if-eqz v3, :cond_0

    .line 41
    move-object v1, v2

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 45
    move-result-object p0

    .line 46
    .line 47
    .line 48
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 49
    .line 50
    .line 51
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    :goto_0
    return-object v1

    .line 56
    .line 57
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    const-string v1, "exception when making client_udid: "

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 73
    .line 74
    const-string v0, "RegisterServiceController"

    .line 75
    .line 76
    .line 77
    invoke-static {v0, p0}, Lcom/bytedance/tea/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    const-string p0, ""

    .line 80
    return-object p0
.end method

.method static synthetic w(Lcom/ss/android/tea/common/deviceregister/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/ss/android/tea/common/deviceregister/d;->h:Ljava/lang/String;

    .line 3
    return-object p1
.end method

.method static synthetic x(Lcom/ss/android/tea/common/deviceregister/d;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/ss/android/tea/common/deviceregister/d;->d0()V

    .line 4
    return-void
.end method

.method private static y(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    move-result v1

    .line 9
    .line 10
    const/16 v2, 0xd

    .line 11
    .line 12
    if-lt v1, v2, :cond_7

    .line 13
    .line 14
    const/16 v2, 0x80

    .line 15
    .line 16
    if-le v1, v2, :cond_1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move v2, v0

    .line 19
    .line 20
    :goto_0
    if-ge v2, v1, :cond_6

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 24
    move-result v3

    .line 25
    .line 26
    const/16 v4, 0x30

    .line 27
    .line 28
    if-lt v3, v4, :cond_2

    .line 29
    .line 30
    const/16 v4, 0x39

    .line 31
    .line 32
    if-le v3, v4, :cond_5

    .line 33
    .line 34
    :cond_2
    const/16 v4, 0x61

    .line 35
    .line 36
    if-lt v3, v4, :cond_3

    .line 37
    .line 38
    const/16 v4, 0x66

    .line 39
    .line 40
    if-le v3, v4, :cond_5

    .line 41
    .line 42
    :cond_3
    const/16 v4, 0x41

    .line 43
    .line 44
    if-lt v3, v4, :cond_4

    .line 45
    .line 46
    const/16 v4, 0x46

    .line 47
    .line 48
    if-le v3, v4, :cond_5

    .line 49
    .line 50
    :cond_4
    const/16 v4, 0x2d

    .line 51
    .line 52
    if-eq v3, v4, :cond_5

    .line 53
    return v0

    .line 54
    .line 55
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_6
    const/4 p0, 0x1

    .line 58
    return p0

    .line 59
    :cond_7
    :goto_1
    return v0
.end method

.method static synthetic z(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/ss/android/tea/common/deviceregister/d;->a:Z

    return p0
.end method


# virtual methods
.method public B()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/ss/android/tea/common/deviceregister/d;->f:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/ss/android/tea/common/deviceregister/d;->c:Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/ss/android/tea/common/deviceregister/d;->v(Landroid/content/Context;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Lcom/ss/android/tea/common/deviceregister/d;->f:Ljava/lang/String;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/ss/android/tea/common/deviceregister/d;->f:Ljava/lang/String;

    .line 19
    return-object v0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/ss/android/tea/common/deviceregister/d;->d:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/ss/android/tea/common/deviceregister/d;->e(Landroid/content/SharedPreferences;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public H()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/ss/android/tea/common/deviceregister/d;->h:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/ss/android/tea/common/deviceregister/d;->d:Landroid/content/SharedPreferences;

    .line 11
    .line 12
    const-string v1, "ssid"

    .line 13
    .line 14
    const-string v2, ""

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iput-object v0, p0, Lcom/ss/android/tea/common/deviceregister/d;->h:Ljava/lang/String;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/ss/android/tea/common/deviceregister/d;->h:Ljava/lang/String;

    .line 23
    return-object v0
.end method

.method public J()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/ss/android/tea/common/deviceregister/d;->i:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/ss/android/tea/common/deviceregister/d;->d:Landroid/content/SharedPreferences;

    .line 11
    .line 12
    const-string v1, "install_id"

    .line 13
    .line 14
    const-string v2, ""

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iput-object v0, p0, Lcom/ss/android/tea/common/deviceregister/d;->i:Ljava/lang/String;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/ss/android/tea/common/deviceregister/d;->i:Ljava/lang/String;

    .line 23
    return-object v0
.end method

.method public L()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/ss/android/tea/common/deviceregister/d;->j:Lorg/json/JSONObject;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/ss/android/tea/common/deviceregister/d;->c:Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    invoke-static {v1, v0}, Lcom/ss/android/tea/common/deviceregister/e;->g(Landroid/content/Context;Lorg/json/JSONObject;)Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/bytedance/tea/common/utility/Logger;->debug()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 25
    .line 26
    const-string v1, "init header error."

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 30
    throw v0

    .line 31
    .line 32
    :cond_1
    :goto_0
    new-instance v0, Lcom/ss/android/tea/common/deviceregister/d$a;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/ss/android/tea/common/deviceregister/d$a;-><init>(Lcom/ss/android/tea/common/deviceregister/d;)V

    .line 36
    .line 37
    iput-object v0, p0, Lcom/ss/android/tea/common/deviceregister/d;->v:Lcom/ss/android/tea/common/deviceregister/d$a;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 41
    return-void
.end method

.method public N()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/ss/android/tea/common/deviceregister/d;->v:Lcom/ss/android/tea/common/deviceregister/d$a;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {v0}, Lcom/ss/android/tea/common/deviceregister/d$a;->b(Lcom/ss/android/tea/common/deviceregister/d$a;)V

    .line 9
    return-void
.end method

.method public P()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/ss/android/tea/common/deviceregister/d;->o:J

    .line 7
    return-void
.end method

.method public R()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/ss/android/tea/common/deviceregister/d;->k:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    .line 6
    :try_start_0
    iput-boolean v1, p0, Lcom/ss/android/tea/common/deviceregister/d;->l:Z

    .line 7
    .line 8
    iget-object v1, p0, Lcom/ss/android/tea/common/deviceregister/d;->k:Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw v1
.end method

.method public S()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/ss/android/tea/common/deviceregister/d;->k:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/tea/common/deviceregister/d;->k:Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw v1
.end method

.method public u()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/ss/android/tea/common/deviceregister/d;->e:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/ss/android/tea/common/deviceregister/d;->c:Landroid/content/Context;

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/ss/android/tea/common/deviceregister/d;->d(Landroid/content/Context;Z)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    iput-object v0, p0, Lcom/ss/android/tea/common/deviceregister/d;->e:Ljava/lang/String;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/ss/android/tea/common/deviceregister/d;->e:Ljava/lang/String;

    .line 20
    return-object v0
.end method
