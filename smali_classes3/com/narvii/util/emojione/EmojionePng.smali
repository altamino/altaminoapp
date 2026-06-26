.class public Lcom/narvii/util/emojione/EmojionePng;
.super Ljava/lang/Object;
.source "EmojionePng.java"


# static fields
.field private static final _unicodeToFilename:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final unicodeToFilename:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/narvii/util/emojione/EmojionePng;->_unicodeToFilename:Ljava/util/HashMap;

    .line 23
    sget-object v0, Lcom/narvii/util/emojione/EmojionePng;->_unicodeToFilename:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/narvii/util/emojione/EmojionePng;->unicodeToFilename:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/narvii/util/emojione/EmojionePng;->cache:Ljava/util/HashMap;

    .line 60
    sget-object v0, Lcom/narvii/util/emojione/EmojionePng;->_unicodeToFilename:Ljava/util/HashMap;

    .line 62
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v3, "0023-20e3.png"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x1

    new-array v5, v3, [I

    const/16 v6, 0x23

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "0023.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "002a-20e3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "002a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "0030-20e3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x30

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "0030.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_3

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "0031-20e3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x31

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "0031.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "0032-20e3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x32

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "0032.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_5

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "0033-20e3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x33

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "0033.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_6

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "0034-20e3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x34

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "0034.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_7

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "0035-20e3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x35

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "0035.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_8

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "0036-20e3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x36

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "0036.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_9

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "0037-20e3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x37

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "0037.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_a

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "0038-20e3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x38

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "0038.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_b

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "0039-20e3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x39

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "0039.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0xa9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "00a9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0xae

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "00ae.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f004

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f004.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f0cf

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f0cf.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f170

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f170.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f171

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f171.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f17e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f17e.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f17f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f17f.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f18e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f18e.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f191

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f191.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f192

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f192.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f193

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f193.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f194

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f194.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f195

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f195.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f196

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f196.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f197

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f197.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f198

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f198.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f199

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f199.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f19a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f19a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_c

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e6-1f1e8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_d

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e6-1f1e9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_e

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e6-1f1ea.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_f

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e6-1f1eb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_10

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e6-1f1ec.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_11

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e6-1f1ee.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_12

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e6-1f1f1.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_13

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e6-1f1f2.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_14

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e6-1f1f4.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_15

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e6-1f1f6.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_16

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e6-1f1f7.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_17

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e6-1f1f8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_18

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e6-1f1f9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_19

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e6-1f1fa.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1a

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e6-1f1fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1b

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e6-1f1fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1c

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e6-1f1ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f1e6

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e6.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1d

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e7-1f1e6.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1e

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e7-1f1e7.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1f

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e7-1f1e9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_20

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e7-1f1ea.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_21

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e7-1f1eb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_22

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e7-1f1ec.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_23

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e7-1f1ed.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_24

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e7-1f1ee.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_25

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e7-1f1ef.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_26

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e7-1f1f1.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_27

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e7-1f1f2.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_28

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e7-1f1f3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_29

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e7-1f1f4.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2a

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e7-1f1f6.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2b

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e7-1f1f7.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2c

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e7-1f1f8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2d

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e7-1f1f9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2e

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e7-1f1fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2f

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e7-1f1fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_30

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e7-1f1fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_31

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e7-1f1ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f1e7

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e7.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_32

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e8-1f1e6.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_33

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e8-1f1e8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_34

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e8-1f1e9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_35

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e8-1f1eb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_36

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e8-1f1ec.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_37

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e8-1f1ed.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_38

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e8-1f1ee.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_39

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e8-1f1f0.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_3a

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e8-1f1f1.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_3b

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e8-1f1f2.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_3c

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e8-1f1f3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_3d

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e8-1f1f4.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_3e

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e8-1f1f5.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_3f

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e8-1f1f7.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_40

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e8-1f1fa.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_41

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e8-1f1fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_42

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e8-1f1fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_43

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e8-1f1fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_44

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e8-1f1fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_45

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e8-1f1ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f1e8

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_46

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e9-1f1ea.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_47

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e9-1f1ec.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_48

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e9-1f1ef.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_49

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e9-1f1f0.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_4a

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e9-1f1f2.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_4b

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e9-1f1f4.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_4c

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e9-1f1ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f1e9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1e9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_4d

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ea-1f1e6.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_4e

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ea-1f1e8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_4f

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ea-1f1ea.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_50

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ea-1f1ec.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_51

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ea-1f1ed.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_52

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ea-1f1f7.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_53

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ea-1f1f8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_54

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ea-1f1f9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_55

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ea-1f1fa.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f1ea

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ea.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_56

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1eb-1f1ee.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_57

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1eb-1f1ef.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_58

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1eb-1f1f0.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_59

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1eb-1f1f2.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_5a

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1eb-1f1f4.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_5b

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1eb-1f1f7.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f1eb

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1eb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_5c

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ec-1f1e6.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_5d

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ec-1f1e7.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_5e

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ec-1f1e9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_5f

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ec-1f1ea.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_60

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ec-1f1eb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_61

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ec-1f1ec.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_62

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ec-1f1ed.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_63

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ec-1f1ee.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_64

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ec-1f1f1.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_65

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ec-1f1f2.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_66

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ec-1f1f3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_67

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ec-1f1f5.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_68

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ec-1f1f6.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_69

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ec-1f1f7.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_6a

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ec-1f1f8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_6b

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ec-1f1f9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_6c

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ec-1f1fa.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_6d

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ec-1f1fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_6e

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ec-1f1fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f1ec

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ec.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_6f

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ed-1f1f0.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_70

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ed-1f1f2.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_71

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ed-1f1f3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_72

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ed-1f1f7.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_73

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ed-1f1f9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_74

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ed-1f1fa.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f1ed

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ed.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_75

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ee-1f1e8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_76

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ee-1f1e9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_77

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ee-1f1ea.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_78

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ee-1f1f1.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_79

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ee-1f1f2.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_7a

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ee-1f1f3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_7b

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ee-1f1f4.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_7c

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ee-1f1f6.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_7d

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ee-1f1f7.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_7e

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ee-1f1f8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_7f

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ee-1f1f9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f1ee

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ee.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_80

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ef-1f1ea.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_81

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ef-1f1f2.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_82

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ef-1f1f4.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_83

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ef-1f1f5.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f1ef

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ef.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_84

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f0-1f1ea.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_85

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f0-1f1ec.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_86

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f0-1f1ed.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_87

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f0-1f1ee.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_88

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f0-1f1f2.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_89

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f0-1f1f3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_8a

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f0-1f1f5.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_8b

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f0-1f1f7.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_8c

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f0-1f1fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_8d

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f0-1f1fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_8e

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f0-1f1ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f1f0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f0.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_8f

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f1-1f1e6.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_90

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f1-1f1e7.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_91

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f1-1f1e8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_92

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f1-1f1ee.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_93

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f1-1f1f0.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_94

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f1-1f1f7.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_95

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f1-1f1f8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_96

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f1-1f1f9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_97

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f1-1f1fa.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_98

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f1-1f1fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_99

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f1-1f1fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f1f1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f1.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_9a

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f2-1f1e6.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_9b

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f2-1f1e8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_9c

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f2-1f1e9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_9d

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f2-1f1ea.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_9e

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f2-1f1eb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_9f

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f2-1f1ec.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_a0

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f2-1f1ed.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_a1

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f2-1f1f0.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_a2

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f2-1f1f1.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_a3

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f2-1f1f2.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_a4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f2-1f1f3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_a5

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f2-1f1f4.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_a6

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f2-1f1f5.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_a7

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f2-1f1f6.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_a8

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f2-1f1f7.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_a9

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f2-1f1f8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_aa

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f2-1f1f9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_ab

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f2-1f1fa.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_ac

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f2-1f1fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_ad

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f2-1f1fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_ae

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f2-1f1fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_af

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f2-1f1fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_b0

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f2-1f1ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f1f2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f2.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_b1

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f3-1f1e6.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_b2

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f3-1f1e8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_b3

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f3-1f1ea.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_b4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f3-1f1eb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_b5

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f3-1f1ec.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_b6

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f3-1f1ee.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_b7

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f3-1f1f1.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_b8

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f3-1f1f4.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_b9

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f3-1f1f5.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_ba

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f3-1f1f7.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_bb

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f3-1f1fa.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_bc

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f3-1f1ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f1f3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_bd

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f4-1f1f2.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f1f4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f4.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_be

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f5-1f1e6.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_bf

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f5-1f1ea.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_c0

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f5-1f1eb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_c1

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f5-1f1ec.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_c2

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f5-1f1ed.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_c3

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f5-1f1f0.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_c4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f5-1f1f1.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_c5

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f5-1f1f2.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_c6

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f5-1f1f3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_c7

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f5-1f1f7.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_c8

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f5-1f1f8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_c9

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f5-1f1f9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_ca

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f5-1f1fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_cb

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f5-1f1fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f1f5

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f5.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_cc

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f6-1f1e6.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f1f6

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f6.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_cd

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f7-1f1ea.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_ce

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f7-1f1f4.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_cf

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f7-1f1f8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_d0

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f7-1f1fa.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_d1

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f7-1f1fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f1f7

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f7.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_d2

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f8-1f1e6.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_d3

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f8-1f1e7.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_d4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f8-1f1e8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_d5

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f8-1f1e9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_d6

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f8-1f1ea.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_d7

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f8-1f1ec.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_d8

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f8-1f1ed.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_d9

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f8-1f1ee.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_da

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f8-1f1ef.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_db

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f8-1f1f0.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_dc

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f8-1f1f1.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_dd

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f8-1f1f2.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_de

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f8-1f1f3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_df

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f8-1f1f4.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_e0

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f8-1f1f7.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_e1

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f8-1f1f8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_e2

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f8-1f1f9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_e3

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f8-1f1fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_e4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f8-1f1fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_e5

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f8-1f1fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_e6

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f8-1f1ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f1f8

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_e7

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f9-1f1e6.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_e8

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f9-1f1e8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_e9

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f9-1f1e9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_ea

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f9-1f1eb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_eb

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f9-1f1ec.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_ec

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f9-1f1ed.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_ed

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f9-1f1ef.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_ee

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f9-1f1f0.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_ef

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f9-1f1f1.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_f0

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f9-1f1f2.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_f1

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f9-1f1f3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_f2

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f9-1f1f4.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_f3

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f9-1f1f7.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_f4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f9-1f1f9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_f5

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f9-1f1fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_f6

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f9-1f1fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_f7

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f9-1f1ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f1f9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1f9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_f8

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1fa-1f1e6.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_f9

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1fa-1f1ec.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_fa

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1fa-1f1f2.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_fb

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1fa-1f1f8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_fc

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1fa-1f1fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_fd

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1fa-1f1ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f1fa

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1fa.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_fe

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1fb-1f1e6.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_ff

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1fb-1f1e8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_100

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1fb-1f1ea.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_101

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1fb-1f1ec.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_102

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1fb-1f1ee.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_103

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1fb-1f1f3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_104

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1fb-1f1fa.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f1fb

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_105

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1fc-1f1eb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_106

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1fc-1f1f8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f1fc

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_107

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1fd-1f1f0.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f1fd

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_108

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1fe-1f1ea.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_109

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1fe-1f1f9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f1fe

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_10a

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ff-1f1e6.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_10b

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ff-1f1f2.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_10c

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ff-1f1fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f1ff

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f1ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f201

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f201.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f202

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f202.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f21a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f21a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f22f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f22f.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f232

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f232.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f233

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f233.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f234

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f234.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f235

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f235.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f236

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f236.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f237

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f237.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f238

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f238.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f239

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f239.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f23a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f23a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f250

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f250.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f251

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f251.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f300

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f300.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f301

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f301.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f302

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f302.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f303

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f303.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f304

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f304.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f305

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f305.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f306

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f306.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f307

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f307.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f308

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f308.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f309

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f309.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f30a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f30a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f30b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f30b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f30c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f30c.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f30d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f30d.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f30e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f30e.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f30f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f30f.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f310

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f310.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f311

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f311.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f312

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f312.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f313

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f313.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f314

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f314.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f315

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f315.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f316

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f316.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f317

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f317.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f318

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f318.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f319

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f319.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f31a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f31a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f31b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f31b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f31c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f31c.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f31d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f31d.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f31e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f31e.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f31f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f31f.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f320

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f320.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f321

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f321.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f324

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f324.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f325

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f325.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f326

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f326.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f327

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f327.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f328

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f328.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f329

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f329.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f32a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f32a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f32b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f32b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f32c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f32c.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f32d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f32d.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f32e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f32e.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f32f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f32f.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f330

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f330.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f331

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f331.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f332

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f332.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f333

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f333.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f334

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f334.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f335

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f335.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f336

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f336.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f337

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f337.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f338

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f338.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f339

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f339.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f33a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f33a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f33b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f33b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f33c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f33c.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f33d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f33d.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f33e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f33e.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f33f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f33f.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f340

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f340.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f341

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f341.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f342

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f342.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f343

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f343.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f344

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f344.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f345

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f345.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f346

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f346.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f347

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f347.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f348

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f348.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f349

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f349.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f34a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f34a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f34b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f34b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f34c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f34c.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f34d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f34d.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f34e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f34e.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f34f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f34f.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f350

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f350.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f351

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f351.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f352

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f352.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f353

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f353.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f354

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f354.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f355

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f355.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f356

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f356.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f357

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f357.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f358

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f358.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f359

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f359.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f35a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f35a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f35b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f35b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f35c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f35c.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f35d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f35d.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f35e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f35e.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f35f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f35f.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f360

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f360.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f361

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f361.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f362

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f362.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f363

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f363.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f364

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f364.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f365

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f365.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f366

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f366.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f367

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f367.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f368

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f368.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f369

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f369.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f36a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f36a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f36b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f36b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f36c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f36c.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f36d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f36d.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f36e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f36e.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f36f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f36f.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f370

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f370.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f371

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f371.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f372

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f372.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f373

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f373.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f374

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f374.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f375

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f375.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f376

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f376.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f377

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f377.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f378

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f378.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f379

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f379.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f37a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f37a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f37b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f37b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f37c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f37c.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f37d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f37d.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f37e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f37e.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f37f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f37f.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f380

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f380.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f381

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f381.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f382

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f382.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f383

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f383.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f384

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f384.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_10d

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f385-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_10e

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f385-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_10f

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f385-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_110

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f385-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_111

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f385-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f385

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f385.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f386

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f386.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f387

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f387.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f388

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f388.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f389

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f389.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f38a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f38a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f38b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f38b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f38c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f38c.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f38d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f38d.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f38e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f38e.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f38f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f38f.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f390

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f390.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f391

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f391.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f392

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f392.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f393

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f393.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f396

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f396.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f397

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f397.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f399

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f399.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f39a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f39a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f39b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f39b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f39e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f39e.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f39f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f39f.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3a0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3a0.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3a1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3a1.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3a2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3a2.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3a3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3a3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3a4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3a4.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3a5

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3a5.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3a6

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3a6.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3a7

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3a7.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3a8

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3a8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3a9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3a9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3aa

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3aa.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3ab

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3ab.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3ac

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3ac.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3ad

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3ad.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3ae

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3ae.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3af

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3af.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3b0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3b0.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3b1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3b1.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3b2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3b2.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3b3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3b3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3b4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3b4.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3b5

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3b5.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3b6

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3b6.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3b7

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3b7.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3b8

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3b8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3b9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3b9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3ba

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3ba.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3bb

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3bb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3bc

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3bc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3bd

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3bd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3be

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3be.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3bf

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3bf.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3c0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3c0.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3c1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3c1.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3c2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3c2.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_112

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3c3-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_113

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3c3-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_114

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3c3-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_115

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3c3-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_116

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3c3-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3c3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3c3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_117

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3c4-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_118

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3c4-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_119

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3c4-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_11a

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3c4-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_11b

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3c4-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3c4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3c4.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3c5

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3c5.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3c6

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3c6.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_11c

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3c7-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_11d

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3c7-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_11e

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3c7-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_11f

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3c7-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_120

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3c7-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3c7

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3c7.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3c8

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3c8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3c9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3c9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_121

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3ca-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_122

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3ca-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_123

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3ca-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_124

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3ca-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_125

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3ca-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3ca

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3ca.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_126

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3cb-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_127

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3cb-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_128

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3cb-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_129

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3cb-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_12a

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3cb-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3cb

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3cb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3cc

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3cc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3cd

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3cd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3ce

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3ce.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3cf

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3cf.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3d0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3d0.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3d1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3d1.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3d2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3d2.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3d3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3d3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3d4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3d4.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3d5

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3d5.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3d6

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3d6.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3d7

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3d7.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3d8

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3d8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3d9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3d9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3da

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3da.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3db

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3db.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3dc

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3dc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3dd

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3dd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3de

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3de.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3df

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3df.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3e0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3e0.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3e1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3e1.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3e2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3e2.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3e3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3e3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3e4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3e4.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3e5

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3e5.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3e6

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3e6.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3e7

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3e7.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3e8

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3e8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3e9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3e9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3ea

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3ea.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3eb

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3eb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3ec

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3ec.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3ed

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3ed.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3ee

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3ee.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3ef

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3ef.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3f0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3f0.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_12b

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3f3-1f308.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3f3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3f3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3f4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3f4.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3f5

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3f5.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3f7

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3f7.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3f8

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3f8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3f9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3f9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3fa

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3fa.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3fb

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3fc

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3fd

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3fe

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f3ff

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f400

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f400.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f401

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f401.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f402

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f402.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f403

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f403.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f404

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f404.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f405

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f405.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f406

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f406.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f407

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f407.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f408

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f408.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f409

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f409.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f40a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f40a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f40b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f40b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f40c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f40c.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f40d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f40d.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f40e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f40e.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f40f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f40f.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f410

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f410.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f411

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f411.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f412

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f412.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f413

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f413.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f414

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f414.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f415

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f415.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f416

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f416.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f417

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f417.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f418

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f418.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f419

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f419.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f41a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f41a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f41b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f41b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f41c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f41c.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f41d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f41d.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f41e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f41e.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f41f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f41f.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f420

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f420.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f421

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f421.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f422

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f422.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f423

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f423.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f424

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f424.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f425

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f425.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f426

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f426.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f427

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f427.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f428

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f428.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f429

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f429.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f42a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f42a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f42b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f42b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f42c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f42c.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f42d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f42d.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f42e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f42e.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f42f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f42f.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f430

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f430.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f431

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f431.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f432

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f432.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f433

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f433.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f434

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f434.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f435

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f435.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f436

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f436.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f437

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f437.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f438

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f438.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f439

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f439.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f43a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f43a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f43b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f43b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f43c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f43c.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f43d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f43d.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f43e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f43e.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f43f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f43f.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f440

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f440.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_12c

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f441-1f5e8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f441

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f441.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_12d

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f442-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_12e

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f442-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_12f

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f442-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_130

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f442-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_131

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f442-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f442

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f442.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_132

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f443-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_133

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f443-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_134

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f443-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_135

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f443-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_136

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f443-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f443

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f443.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f444

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f444.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f445

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f445.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_137

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f446-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_138

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f446-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_139

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f446-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_13a

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f446-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_13b

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f446-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f446

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f446.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_13c

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f447-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_13d

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f447-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_13e

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f447-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_13f

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f447-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_140

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f447-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f447

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f447.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_141

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f448-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_142

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f448-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_143

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f448-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_144

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f448-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_145

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f448-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f448

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f448.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_146

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f449-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_147

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f449-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_148

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f449-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_149

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f449-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_14a

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f449-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f449

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f449.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_14b

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f44a-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_14c

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f44a-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_14d

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f44a-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_14e

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f44a-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_14f

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f44a-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f44a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f44a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_150

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f44b-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_151

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f44b-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_152

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f44b-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_153

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f44b-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_154

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f44b-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f44b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f44b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_155

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f44c-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_156

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f44c-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_157

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f44c-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_158

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f44c-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_159

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f44c-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f44c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f44c.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_15a

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f44d-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_15b

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f44d-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_15c

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f44d-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_15d

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f44d-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_15e

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f44d-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f44d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f44d.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_15f

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f44e-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_160

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f44e-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_161

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f44e-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_162

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f44e-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_163

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f44e-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f44e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f44e.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_164

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f44f-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_165

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f44f-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_166

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f44f-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_167

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f44f-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_168

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f44f-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f44f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f44f.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_169

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f450-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_16a

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f450-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_16b

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f450-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_16c

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f450-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_16d

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f450-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f450

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f450.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f451

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f451.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f452

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f452.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f453

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f453.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f454

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f454.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f455

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f455.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f456

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f456.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f457

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f457.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f458

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f458.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f459

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f459.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f45a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f45a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f45b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f45b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f45c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f45c.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f45d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f45d.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f45e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f45e.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f45f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f45f.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f460

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f460.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f461

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f461.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f462

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f462.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f463

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f463.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f464

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f464.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f465

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f465.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_16e

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f466-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_16f

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f466-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_170

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f466-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_171

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f466-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_172

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f466-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f466

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f466.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_173

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f467-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_174

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f467-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_175

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f467-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_176

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f467-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_177

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f467-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f467

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f467.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_178

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f468-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_179

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f468-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_17a

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f468-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_17b

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f468-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_17c

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f468-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    new-instance v1, Ljava/lang/String;

    const/4 v5, 0x4

    new-array v6, v5, [I

    fill-array-data v6, :array_17d

    invoke-direct {v1, v6, v4, v5}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f468-1f468-1f466-1f466.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    new-instance v1, Ljava/lang/String;

    const/4 v6, 0x3

    new-array v7, v6, [I

    fill-array-data v7, :array_17e

    invoke-direct {v1, v7, v4, v6}, Ljava/lang/String;-><init>([III)V

    const-string v7, "1f468-1f468-1f466.png"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    new-instance v1, Ljava/lang/String;

    new-array v7, v5, [I

    fill-array-data v7, :array_17f

    invoke-direct {v1, v7, v4, v5}, Ljava/lang/String;-><init>([III)V

    const-string v7, "1f468-1f468-1f467-1f466.png"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    new-instance v1, Ljava/lang/String;

    new-array v7, v5, [I

    fill-array-data v7, :array_180

    invoke-direct {v1, v7, v4, v5}, Ljava/lang/String;-><init>([III)V

    const-string v7, "1f468-1f468-1f467-1f467.png"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    new-instance v1, Ljava/lang/String;

    new-array v7, v6, [I

    fill-array-data v7, :array_181

    invoke-direct {v1, v7, v4, v6}, Ljava/lang/String;-><init>([III)V

    const-string v7, "1f468-1f468-1f467.png"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    new-instance v1, Ljava/lang/String;

    new-array v7, v5, [I

    fill-array-data v7, :array_182

    invoke-direct {v1, v7, v4, v5}, Ljava/lang/String;-><init>([III)V

    const-string v7, "1f468-1f469-1f466-1f466.png"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    new-instance v1, Ljava/lang/String;

    new-array v7, v5, [I

    fill-array-data v7, :array_183

    invoke-direct {v1, v7, v4, v5}, Ljava/lang/String;-><init>([III)V

    const-string v7, "1f468-1f469-1f467-1f466.png"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    new-instance v1, Ljava/lang/String;

    new-array v7, v5, [I

    fill-array-data v7, :array_184

    invoke-direct {v1, v7, v4, v5}, Ljava/lang/String;-><init>([III)V

    const-string v7, "1f468-1f469-1f467-1f467.png"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    new-instance v1, Ljava/lang/String;

    new-array v7, v6, [I

    fill-array-data v7, :array_185

    invoke-direct {v1, v7, v4, v6}, Ljava/lang/String;-><init>([III)V

    const-string v7, "1f468-1f469-1f467.png"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    new-instance v1, Ljava/lang/String;

    new-array v7, v6, [I

    fill-array-data v7, :array_186

    invoke-direct {v1, v7, v4, v6}, Ljava/lang/String;-><init>([III)V

    const-string v7, "1f468-2764-1f468.png"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    new-instance v1, Ljava/lang/String;

    new-array v7, v5, [I

    fill-array-data v7, :array_187

    invoke-direct {v1, v7, v4, v5}, Ljava/lang/String;-><init>([III)V

    const-string v7, "1f468-2764-1f48b-1f468.png"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    new-instance v1, Ljava/lang/String;

    new-array v7, v3, [I

    const v8, 0x1f468

    aput v8, v7, v4

    invoke-direct {v1, v7, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v7, "1f468.png"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    new-instance v1, Ljava/lang/String;

    new-array v7, v2, [I

    fill-array-data v7, :array_188

    invoke-direct {v1, v7, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v7, "1f469-1f3fb.png"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    new-instance v1, Ljava/lang/String;

    new-array v7, v2, [I

    fill-array-data v7, :array_189

    invoke-direct {v1, v7, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v7, "1f469-1f3fc.png"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    new-instance v1, Ljava/lang/String;

    new-array v7, v2, [I

    fill-array-data v7, :array_18a

    invoke-direct {v1, v7, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v7, "1f469-1f3fd.png"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    new-instance v1, Ljava/lang/String;

    new-array v7, v2, [I

    fill-array-data v7, :array_18b

    invoke-direct {v1, v7, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v7, "1f469-1f3fe.png"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    new-instance v1, Ljava/lang/String;

    new-array v7, v2, [I

    fill-array-data v7, :array_18c

    invoke-direct {v1, v7, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v7, "1f469-1f3ff.png"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    new-instance v1, Ljava/lang/String;

    new-array v7, v5, [I

    fill-array-data v7, :array_18d

    invoke-direct {v1, v7, v4, v5}, Ljava/lang/String;-><init>([III)V

    const-string v7, "1f469-1f469-1f466-1f466.png"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    new-instance v1, Ljava/lang/String;

    new-array v7, v6, [I

    fill-array-data v7, :array_18e

    invoke-direct {v1, v7, v4, v6}, Ljava/lang/String;-><init>([III)V

    const-string v7, "1f469-1f469-1f466.png"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    new-instance v1, Ljava/lang/String;

    new-array v7, v5, [I

    fill-array-data v7, :array_18f

    invoke-direct {v1, v7, v4, v5}, Ljava/lang/String;-><init>([III)V

    const-string v7, "1f469-1f469-1f467-1f466.png"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    new-instance v1, Ljava/lang/String;

    new-array v7, v5, [I

    fill-array-data v7, :array_190

    invoke-direct {v1, v7, v4, v5}, Ljava/lang/String;-><init>([III)V

    const-string v7, "1f469-1f469-1f467-1f467.png"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    new-instance v1, Ljava/lang/String;

    new-array v7, v6, [I

    fill-array-data v7, :array_191

    invoke-direct {v1, v7, v4, v6}, Ljava/lang/String;-><init>([III)V

    const-string v7, "1f469-1f469-1f467.png"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    new-instance v1, Ljava/lang/String;

    new-array v7, v6, [I

    fill-array-data v7, :array_192

    invoke-direct {v1, v7, v4, v6}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f469-2764-1f469.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    new-instance v1, Ljava/lang/String;

    new-array v6, v5, [I

    fill-array-data v6, :array_193

    invoke-direct {v1, v6, v4, v5}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f469-2764-1f48b-1f469.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f469

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f469.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f46a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f46a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f46b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f46b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f46c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f46c.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f46d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f46d.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_194

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f46e-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_195

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f46e-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_196

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f46e-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_197

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f46e-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_198

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f46e-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f46e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f46e.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f46f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f46f.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_199

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f470-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_19a

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f470-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_19b

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f470-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_19c

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f470-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_19d

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f470-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f470

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f470.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_19e

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f471-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_19f

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f471-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1a0

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f471-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1a1

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f471-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1a2

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f471-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f471

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f471.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1a3

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f472-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1a4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f472-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1a5

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f472-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1a6

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f472-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1a7

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f472-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f472

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f472.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1a8

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f473-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1a9

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f473-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1aa

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f473-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1ab

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f473-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1ac

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f473-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f473

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f473.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1ad

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f474-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1ae

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f474-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1af

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f474-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1b0

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f474-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1b1

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f474-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f474

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f474.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1b2

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f475-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1b3

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f475-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1b4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f475-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1b5

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f475-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1b6

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f475-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f475

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f475.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1b7

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f476-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1b8

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f476-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1b9

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f476-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1ba

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f476-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1bb

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f476-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f476

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f476.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1bc

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f477-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1bd

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f477-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1be

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f477-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1bf

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f477-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1c0

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f477-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f477

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f477.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1c1

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f478-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1c2

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f478-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1c3

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f478-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1c4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f478-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1c5

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f478-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f478

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f478.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f479

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f479.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f47a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f47a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f47b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f47b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1c6

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f47c-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1c7

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f47c-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1c8

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f47c-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1c9

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f47c-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1ca

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f47c-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f47c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f47c.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f47d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f47d.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f47e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f47e.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f47f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f47f.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f480

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f480.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1cb

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f481-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1cc

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f481-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1cd

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f481-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1ce

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f481-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1cf

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f481-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f481

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f481.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1d0

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f482-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1d1

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f482-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1d2

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f482-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1d3

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f482-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1d4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f482-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f482

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f482.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1d5

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f483-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1d6

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f483-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1d7

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f483-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1d8

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f483-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1d9

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f483-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f483

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f483.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f484

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f484.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1da

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f485-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1db

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f485-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1dc

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f485-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1dd

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f485-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1de

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f485-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f485

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f485.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1df

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f486-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1e0

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f486-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1e1

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f486-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1e2

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f486-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1e3

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f486-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f486

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f486.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1e4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f487-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1e5

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f487-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1e6

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f487-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1e7

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f487-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1e8

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f487-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f487

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f487.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f488

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f488.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f489

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f489.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f48a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f48a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f48b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f48b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f48c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f48c.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f48d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f48d.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f48e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f48e.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f48f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f48f.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f490

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f490.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f491

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f491.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f492

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f492.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f493

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f493.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f494

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f494.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f495

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f495.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f496

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f496.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f497

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f497.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f498

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f498.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f499

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f499.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f49a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f49a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f49b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f49b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f49c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f49c.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f49d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f49d.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f49e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f49e.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f49f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f49f.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4a0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4a0.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4a1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4a1.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4a2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4a2.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4a3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4a3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4a4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4a4.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4a5

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4a5.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4a6

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4a6.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4a7

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4a7.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4a8

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4a8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4a9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4a9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1e9

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4aa-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1ea

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4aa-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1eb

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4aa-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1ec

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4aa-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1ed

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4aa-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4aa

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4aa.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4ab

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4ab.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4ac

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4ac.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4ad

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4ad.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4ae

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4ae.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4af

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4af.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4b0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4b0.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4b1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4b1.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4b2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4b2.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4b3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4b3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4b4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4b4.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4b5

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4b5.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4b6

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4b6.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4b7

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4b7.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4b8

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4b8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4b9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4b9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4ba

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4ba.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4bb

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4bb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4bc

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4bc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4bd

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4bd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4be

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4be.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4bf

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4bf.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4c0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4c0.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4c1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4c1.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4c2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4c2.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4c3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4c3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4c4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4c4.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4c5

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4c5.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4c6

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4c6.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4c7

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4c7.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4c8

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4c8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4c9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4c9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4ca

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4ca.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4cb

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4cb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4cc

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4cc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4cd

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4cd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4ce

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4ce.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4cf

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4cf.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4d0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4d0.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4d1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4d1.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4d2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4d2.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4d3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4d3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4d4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4d4.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4d5

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4d5.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4d6

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4d6.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4d7

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4d7.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4d8

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4d8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4d9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4d9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4da

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4da.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4db

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4db.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4dc

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4dc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4dd

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4dd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4de

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4de.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4df

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4df.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4e0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4e0.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4e1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4e1.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4e2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4e2.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4e3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4e3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4e4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4e4.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4e5

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4e5.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4e6

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4e6.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4e7

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4e7.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4e8

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4e8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4e9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4e9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4ea

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4ea.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4eb

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4eb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4ec

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4ec.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4ed

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4ed.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4ee

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4ee.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4ef

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4ef.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4f0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4f0.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4f1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4f1.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4f2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4f2.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4f3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4f3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4f4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4f4.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4f5

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4f5.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4f6

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4f6.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4f7

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4f7.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4f8

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4f8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4f9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4f9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4fa

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4fa.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4fb

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4fc

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4fd

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f4ff

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f4ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f500

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f500.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f501

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f501.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f502

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f502.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f503

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f503.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f504

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f504.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f505

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f505.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f506

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f506.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f507

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f507.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f508

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f508.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f509

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f509.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f50a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f50a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f50b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f50b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f50c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f50c.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f50d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f50d.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f50e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f50e.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f50f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f50f.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f510

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f510.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f511

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f511.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f512

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f512.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f513

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f513.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f514

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f514.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f515

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f515.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f516

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f516.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f517

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f517.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f518

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f518.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f519

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f519.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f51a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f51a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f51b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f51b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f51c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f51c.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f51d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f51d.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f51e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f51e.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f51f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f51f.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f520

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f520.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f521

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f521.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f522

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f522.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f523

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f523.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f524

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f524.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f525

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f525.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f526

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f526.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f527

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f527.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f528

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f528.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f529

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f529.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f52a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f52a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f52b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f52b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f52c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f52c.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f52d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f52d.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f52e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f52e.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f52f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f52f.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f530

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f530.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f531

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f531.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f532

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f532.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f533

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f533.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f534

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f534.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f535

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f535.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f536

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f536.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f537

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f537.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f538

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f538.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f539

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f539.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f53a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f53a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f53b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f53b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f53c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f53c.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f53d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f53d.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f549

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f549.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f54a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f54a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f54b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f54b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f54c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f54c.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f54d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f54d.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f54e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f54e.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f550

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f550.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f551

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f551.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f552

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f552.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f553

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f553.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f554

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f554.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f555

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f555.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f556

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f556.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f557

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f557.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f558

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f558.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f559

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f559.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f55a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f55a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f55b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f55b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f55c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f55c.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f55d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f55d.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f55e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f55e.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f55f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f55f.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f560

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f560.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f561

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f561.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f562

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f562.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f563

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f563.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f564

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f564.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f565

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f565.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f566

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f566.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f567

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f567.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f56f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f56f.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f570

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f570.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f573

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f573.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f574

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f574.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1ee

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f575-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1ef

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f575-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1f0

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f575-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1228
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1f1

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f575-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1f2

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f575-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f575

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f575.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f576

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f576.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1232
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f577

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f577.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f578

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f578.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f579

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f579.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1f3

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f57a-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1f4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f57a-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1f5

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f57a-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1f6

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f57a-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1f7

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f57a-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f57a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f57a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f587

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f587.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f58a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f58a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f58b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f58b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1244
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f58c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f58c.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f58d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f58d.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1f8

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f590-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1f9

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f590-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1fa

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f590-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1fb

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f590-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1fc

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f590-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f590

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f590.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1fd

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f595-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1fe

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f595-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_1ff

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f595-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_200

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f595-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1256
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_201

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f595-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f595

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f595.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_202

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f596-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_203

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f596-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_204

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f596-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_205

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f596-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_206

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f596-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f596

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f596.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f5a4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f5a4.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f5a5

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f5a5.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f5a8

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f5a8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f5b1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f5b1.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f5b2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f5b2.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f5bc

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f5bc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f5c2    # 1.79997E-40f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f5c2.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f5c3    # 1.79998E-40f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f5c3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1272
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f5c4    # 1.8E-40f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f5c4.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f5d1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f5d1.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f5d2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f5d2.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f5d3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f5d3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f5dc

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f5dc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f5dd

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f5dd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f5de

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f5de.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f5e1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f5e1.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f5e3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f5e3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f5e8

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f5e8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1282
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f5ef

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f5ef.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f5f3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f5f3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f5fa

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f5fa.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f5fb

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f5fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f5fc

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f5fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f5fd

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f5fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f5fe

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f5fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f5ff

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f5ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f600

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f600.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f601

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f601.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f602

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f602.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f603

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f603.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1294
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f604

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f604.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f605

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f605.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1296
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f606

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f606.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f607

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f607.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f608

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f608.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1299
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f609

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f609.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f60a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f60a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f60b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f60b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1302
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f60c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f60c.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f60d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f60d.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1304
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f60e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f60e.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f60f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f60f.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1306
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f610

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f610.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f611

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f611.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1308
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f612

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f612.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f613

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f613.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1310
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f614

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f614.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1311
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f615

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f615.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f616

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f616.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1313
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f617

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f617.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1314
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f618

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f618.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f619

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f619.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f61a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f61a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1317
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f61b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f61b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f61c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f61c.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f61d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f61d.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1320
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f61e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f61e.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f61f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f61f.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1322
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f620

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f620.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f621

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f621.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1324
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f622

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f622.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1325
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f623

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f623.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1326
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f624

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f624.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f625

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f625.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1328
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f626

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f626.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f627

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f627.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f628

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f628.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1331
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f629

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f629.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1332
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f62a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f62a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1333
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f62b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f62b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1334
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f62c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f62c.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1335
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f62d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f62d.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f62e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f62e.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1337
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f62f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f62f.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1338
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f630

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f630.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f631

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f631.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1340
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f632

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f632.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1341
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f633

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f633.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f634

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f634.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f635

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f635.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1344
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f636

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f636.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1345
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f637

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f637.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f638

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f638.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f639

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f639.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f63a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f63a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f63b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f63b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1350
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f63c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f63c.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1351
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f63d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f63d.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1352
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f63e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f63e.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1353
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f63f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f63f.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1354
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f640

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f640.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1355
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f641

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f641.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1356
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f642

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f642.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1357
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f643

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f643.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f644

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f644.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_207

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f645-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1360
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_208

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f645-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1361
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_209

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f645-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1362
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_20a

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f645-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1363
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_20b

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f645-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f645

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f645.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_20c

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f646-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1366
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_20d

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f646-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_20e

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f646-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1368
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_20f

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f646-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1369
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_210

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f646-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f646

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f646.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1371
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_211

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f647-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1372
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_212

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f647-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1373
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_213

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f647-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_214

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f647-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1375
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_215

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f647-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1376
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f647

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f647.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1377
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f648

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f648.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1378
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f649

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f649.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1379
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f64a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f64a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1380
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_216

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f64b-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_217

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f64b-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1382
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_218

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f64b-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_219

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f64b-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1384
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_21a

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f64b-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1385
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f64b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f64b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1386
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_21b

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f64c-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1387
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_21c

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f64c-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1388
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_21d

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f64c-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1389
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_21e

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f64c-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_21f

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f64c-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1391
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f64c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f64c.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1392
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_220

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f64d-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_221

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f64d-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_222

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f64d-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1395
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_223

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f64d-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1396
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_224

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f64d-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1397
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f64d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f64d.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_225

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f64e-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_226

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f64e-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1400
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_227

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f64e-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1401
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_228

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f64e-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1402
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_229

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f64e-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1403
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f64e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f64e.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1404
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_22a

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f64f-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1405
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_22b

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f64f-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1406
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_22c

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f64f-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1407
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_22d

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f64f-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1408
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_22e

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f64f-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1409
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f64f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f64f.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1410
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f680

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f680.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1411
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f681

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f681.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1412
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f682

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f682.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1413
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f683

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f683.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1414
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f684

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f684.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f685

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f685.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1416
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f686

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f686.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1417
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f687

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f687.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1418
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f688

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f688.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1419
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f689

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f689.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1420
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f68a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f68a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1421
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f68b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f68b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1422
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f68c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f68c.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1423
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f68d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f68d.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1424
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f68e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f68e.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1425
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f68f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f68f.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1426
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f690

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f690.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f691

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f691.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1428
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f692

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f692.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1429
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f693

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f693.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1430
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f694

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f694.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1431
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f695

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f695.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1432
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f696

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f696.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1433
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f697

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f697.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1434
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f698

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f698.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1435
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f699

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f699.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1436
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f69a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f69a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1437
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f69b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f69b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f69c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f69c.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1439
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f69d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f69d.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f69e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f69e.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f69f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f69f.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6a0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6a0.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1443
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6a1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6a1.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1444
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6a2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6a2.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1445
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_22f

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6a3-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1446
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_230

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6a3-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_231

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6a3-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1448
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_232

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6a3-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1449
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_233

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6a3-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1450
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6a3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6a3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1451
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6a4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6a4.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1452
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6a5

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6a5.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1453
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6a6

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6a6.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6a7

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6a7.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1455
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6a8

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6a8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6a9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6a9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1457
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6aa

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6aa.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1458
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6ab

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6ab.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1459
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6ac

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6ac.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1460
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6ad

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6ad.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1461
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6ae

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6ae.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1462
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6af

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6af.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1463
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6b0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6b0.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1464
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6b1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6b1.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1465
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6b2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6b2.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1466
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6b3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6b3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1467
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_234

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6b4-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1468
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_235

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6b4-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1469
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_236

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6b4-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1470
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_237

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6b4-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1471
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_238

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6b4-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6b4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6b4.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_239

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6b5-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1474
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_23a

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6b5-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1475
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_23b

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6b5-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1476
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_23c

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6b5-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1477
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_23d

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6b5-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1478
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6b5

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6b5.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1479
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_23e

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6b6-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1480
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_23f

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6b6-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1481
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_240

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6b6-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1482
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_241

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6b6-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1483
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_242

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6b6-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1484
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6b6

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6b6.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1485
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6b7

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6b7.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1486
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6b8

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6b8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1487
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6b9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6b9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1488
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6ba

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6ba.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1489
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6bb

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6bb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1490
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6bc

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6bc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1491
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6bd

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6bd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6be

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6be.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1493
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6bf

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6bf.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1494
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_243

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6c0-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1495
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_244

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6c0-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1496
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_245

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6c0-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1497
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_246

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6c0-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1498
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_247

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6c0-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1499
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6c0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6c0.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1500
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6c1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6c1.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1501
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6c2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6c2.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1502
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6c3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6c3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1503
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6c4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6c4.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6c5

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6c5.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1505
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6cb

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6cb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1506
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6cc

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6cc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1507
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6cd

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6cd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1508
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6ce

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6ce.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1509
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6cf

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6cf.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1510
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6d0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6d0.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6d1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6d1.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1512
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6d2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6d2.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1513
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6e0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6e0.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1514
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6e1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6e1.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1515
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6e2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6e2.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1516
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6e3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6e3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6e4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6e4.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1518
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6e5

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6e5.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1519
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6e9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6e9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6eb

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6eb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1521
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6ec

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6ec.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1522
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6f0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6f0.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1523
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6f3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6f3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1524
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6f4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6f4.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1525
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6f5

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6f5.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1526
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f6f6

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f6f6.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1527
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f910

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f910.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1528
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f911

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f911.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1529
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f912

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f912.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1530
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f913

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f913.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1531
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f914

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f914.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1532
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f915

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f915.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1533
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f916

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f916.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1534
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f917

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f917.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1535
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_248

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f918-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1536
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_249

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f918-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1537
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_24a

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f918-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1538
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_24b

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f918-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1539
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_24c

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f918-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1540
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f918

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f918.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1541
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_24d

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f919-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1542
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_24e

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f919-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1543
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_24f

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f919-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1544
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_250

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f919-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1545
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_251

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f919-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1546
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f919

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f919.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1547
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_252

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f91a-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1548
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_253

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f91a-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1549
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_254

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f91a-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1550
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_255

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f91a-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1551
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_256

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f91a-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1552
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f91a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f91a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1553
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_257

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f91b-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1554
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_258

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f91b-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1555
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_259

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f91b-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1556
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_25a

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f91b-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1557
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_25b

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f91b-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1558
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f91b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f91b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1559
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_25c

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f91c-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1560
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_25d

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f91c-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1561
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_25e

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f91c-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1562
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_25f

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f91c-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1563
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_260

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f91c-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1564
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f91c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f91c.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1565
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_261

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f91d-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1566
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_262

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f91d-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1567
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_263

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f91d-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1568
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_264

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f91d-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1569
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_265

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f91d-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1570
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f91d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f91d.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1571
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_266

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f91e-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1572
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_267

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f91e-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1573
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_268

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f91e-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1574
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_269

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f91e-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1575
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_26a

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f91e-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1576
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f91e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f91e.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1577
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f920

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f920.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1578
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f921

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f921.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1579
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f922

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f922.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1580
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f923

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f923.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1581
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f924

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f924.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1582
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f925

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f925.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1583
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_26b

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f926-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1584
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_26c

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f926-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1585
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_26d

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f926-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1586
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_26e

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f926-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1587
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_26f

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f926-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1588
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f926

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f926.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1589
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f927

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f927.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1590
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_270

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f930-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1591
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_271

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f930-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1592
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_272

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f930-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1593
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_273

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f930-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1594
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_274

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f930-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1595
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f930

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f930.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1596
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_275

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f933-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1597
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_276

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f933-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1598
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_277

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f933-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1599
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_278

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f933-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1600
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_279

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f933-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1601
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f933

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f933.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1602
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_27a

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f934-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1603
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_27b

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f934-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1604
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_27c

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f934-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1605
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_27d

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f934-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1606
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_27e

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f934-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1607
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f934

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f934.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1608
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_27f

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f935-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1609
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_280

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f935-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1610
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_281

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f935-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1611
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_282

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f935-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1612
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_283

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f935-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1613
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f935

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f935.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1614
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_284

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f936-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1615
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_285

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f936-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1616
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_286

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f936-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1617
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_287

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f936-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1618
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_288

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f936-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f936

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f936.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1620
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_289

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f937-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1621
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_28a

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f937-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1622
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_28b

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f937-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1623
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_28c

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f937-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1624
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_28d

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f937-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1625
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f937

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f937.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1626
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_28e

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f938-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1627
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_28f

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f938-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1628
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_290

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f938-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1629
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_291

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f938-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1630
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_292

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f938-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1631
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f938

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f938.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1632
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_293

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f939-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1633
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_294

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f939-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1634
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_295

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f939-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1635
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_296

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f939-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1636
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_297

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f939-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1637
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f939

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f939.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1638
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f93a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f93a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1639
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_298

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f93c-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1640
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_299

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f93c-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1641
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_29a

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f93c-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1642
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_29b

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f93c-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1643
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_29c

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f93c-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1644
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f93c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f93c.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1645
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_29d

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f93d-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1646
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_29e

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f93d-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1647
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_29f

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f93d-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1648
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2a0

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f93d-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1649
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2a1

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f93d-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1650
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f93d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f93d.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1651
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2a2

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f93e-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1652
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2a3

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f93e-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1653
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2a4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f93e-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1654
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2a5

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f93e-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1655
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2a6

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f93e-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1656
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f93e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f93e.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1657
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f940

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f940.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1658
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f941

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f941.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1659
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f942

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f942.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1660
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f943

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f943.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1661
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f944

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f944.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1662
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f945

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f945.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1663
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f947

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f947.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1664
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f948

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f948.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1665
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f949

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f949.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1666
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f94a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f94a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1667
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f94b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f94b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1668
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f950

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f950.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1669
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f951

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f951.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1670
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f952

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f952.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1671
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f953

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f953.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1672
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f954

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f954.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1673
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f955

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f955.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1674
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f956

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f956.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1675
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f957

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f957.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1676
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f958

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f958.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1677
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f959

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f959.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1678
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f95a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f95a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1679
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f95b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f95b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1680
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f95c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f95c.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1681
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f95d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f95d.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1682
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f95e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f95e.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1683
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f980

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f980.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1684
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f981

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f981.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1685
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f982

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f982.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1686
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f983

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f983.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1687
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f984

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f984.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1688
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f985

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f985.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1689
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f986

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f986.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1690
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f987

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f987.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1691
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f988

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f988.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1692
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f989

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f989.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1693
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f98a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f98a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1694
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f98b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f98b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1695
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f98c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f98c.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1696
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f98d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f98d.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1697
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f98e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f98e.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1698
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f98f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f98f.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1699
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f990

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f990.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1700
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f991

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f991.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1701
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const v6, 0x1f9c0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "1f9c0.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1702
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x203c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "203c.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1703
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2049

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2049.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1704
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2122

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2122.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1705
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2139

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2139.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1706
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2194

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2194.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1707
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2195

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2195.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1708
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2196

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2196.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1709
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2197

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2197.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1710
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2198

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2198.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1711
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2199

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2199.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1712
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x21a9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "21a9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1713
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x21aa

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "21aa.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1714
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x231a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "231a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1715
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x231b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "231b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1716
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2328

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2328.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1717
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x23cf

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "23cf.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1718
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x23e9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "23e9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1719
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x23ea

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "23ea.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1720
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x23eb

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "23eb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1721
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x23ec

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "23ec.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1722
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x23ed

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "23ed.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1723
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x23ee

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "23ee.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1724
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x23ef

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "23ef.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1725
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x23f0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "23f0.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1726
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x23f1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "23f1.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1727
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x23f2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "23f2.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1728
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x23f3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "23f3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1729
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x23f8

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "23f8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1730
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x23f9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "23f9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1731
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x23fa

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "23fa.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1732
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x24c2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "24c2.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1733
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x25aa

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "25aa.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1734
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x25ab

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "25ab.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1735
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x25b6

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "25b6.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1736
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x25c0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "25c0.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1737
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x25fb

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "25fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1738
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x25fc

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "25fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1739
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x25fd

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "25fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1740
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x25fe

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "25fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1741
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2600

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2600.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1742
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2601

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2601.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1743
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2602

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2602.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1744
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2603

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2603.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1745
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2604

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2604.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1746
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x260e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "260e.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1747
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2611

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2611.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1748
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2614

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2614.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1749
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2615

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2615.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1750
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2618

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2618.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1751
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2a7

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "261d-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1752
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2a8

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "261d-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1753
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2a9

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "261d-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1754
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2aa

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "261d-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1755
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2ab

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "261d-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1756
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x261d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "261d.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1757
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2620

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2620.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1758
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2622

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2622.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1759
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2623

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2623.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1760
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2626

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2626.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1761
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x262a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "262a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1762
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x262e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "262e.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1763
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x262f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "262f.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1764
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2638

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2638.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1765
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2639

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2639.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1766
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x263a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "263a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1767
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2648

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2648.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1768
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2649

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2649.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1769
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x264a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "264a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1770
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x264b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "264b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1771
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x264c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "264c.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1772
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x264d

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "264d.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1773
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x264e

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "264e.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1774
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x264f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "264f.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1775
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2650

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2650.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2651

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2651.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1777
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2652

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2652.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1778
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2653

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2653.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1779
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2660

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2660.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1780
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2663

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2663.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1781
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2665

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2665.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1782
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2666

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2666.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1783
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2668

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2668.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1784
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x267b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "267b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1785
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x267f

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "267f.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1786
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2692

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2692.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1787
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2693

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2693.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1788
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2694

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2694.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1789
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2696

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2696.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1790
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2697

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2697.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1791
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2699

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2699.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1792
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x269b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "269b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1793
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x269c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "269c.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1794
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x26a0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "26a0.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1795
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x26a1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "26a1.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1796
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x26aa

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "26aa.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1797
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x26ab

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "26ab.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1798
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x26b0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "26b0.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1799
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x26b1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "26b1.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1800
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x26bd

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "26bd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1801
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x26be

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "26be.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1802
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x26c4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "26c4.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1803
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x26c5

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "26c5.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1804
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x26c8

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "26c8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1805
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x26ce

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "26ce.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1806
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x26cf

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "26cf.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1807
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x26d1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "26d1.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1808
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x26d3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "26d3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1809
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x26d4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "26d4.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1810
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x26e9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "26e9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1811
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x26ea

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "26ea.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1812
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x26f0

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "26f0.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1813
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x26f1

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "26f1.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1814
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x26f2

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "26f2.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1815
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x26f3

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "26f3.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1816
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x26f4

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "26f4.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1817
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x26f5

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "26f5.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1818
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x26f7

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "26f7.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1819
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x26f8

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "26f8.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1820
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2ac

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "26f9-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1821
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2ad

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "26f9-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1822
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2ae

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "26f9-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1823
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2af

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "26f9-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1824
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2b0

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "26f9-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1825
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x26f9

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "26f9.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1826
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x26fa

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "26fa.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1827
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x26fd

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "26fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1828
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2702

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2702.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1829
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2705

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2705.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1830
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2708

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2708.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1831
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x2709

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "2709.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1832
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2b1

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "270a-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1833
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2b2

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "270a-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1834
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2b3

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "270a-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1835
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2b4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "270a-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1836
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2b5

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "270a-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1837
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x270a

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "270a.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1838
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2b6

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "270b-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1839
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2b7

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "270b-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1840
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2b8

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "270b-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1841
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2b9

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "270b-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1842
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2ba

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "270b-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1843
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x270b

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "270b.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1844
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2bb

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "270c-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1845
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2bc

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "270c-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1846
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2bd

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "270c-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1847
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2be

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "270c-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1848
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2bf

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "270c-1f3ff.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1849
    new-instance v1, Ljava/lang/String;

    new-array v5, v3, [I

    const/16 v6, 0x270c

    aput v6, v5, v4

    invoke-direct {v1, v5, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v5, "270c.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1850
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2c0

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "270d-1f3fb.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1851
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2c1

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "270d-1f3fc.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1852
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2c2

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "270d-1f3fd.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1853
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2c3

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v5, "270d-1f3fe.png"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1854
    new-instance v1, Ljava/lang/String;

    new-array v5, v2, [I

    fill-array-data v5, :array_2c4

    invoke-direct {v1, v5, v4, v2}, Ljava/lang/String;-><init>([III)V

    const-string v2, "270d-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1855
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    const/16 v5, 0x270d

    aput v5, v2, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v2, "270d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1856
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    const/16 v5, 0x270f

    aput v5, v2, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v2, "270f.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1857
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    const/16 v5, 0x2712

    aput v5, v2, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2712.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1858
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    const/16 v5, 0x2714

    aput v5, v2, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2714.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1859
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    const/16 v5, 0x2716

    aput v5, v2, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2716.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1860
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    const/16 v5, 0x271d

    aput v5, v2, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v2, "271d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1861
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    const/16 v5, 0x2721

    aput v5, v2, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2721.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1862
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    const/16 v5, 0x2728

    aput v5, v2, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2728.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1863
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    const/16 v5, 0x2733

    aput v5, v2, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2733.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1864
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    const/16 v5, 0x2734

    aput v5, v2, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2734.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1865
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    const/16 v5, 0x2744

    aput v5, v2, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2744.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1866
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    const/16 v5, 0x2747

    aput v5, v2, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2747.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1867
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    const/16 v5, 0x274c

    aput v5, v2, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v2, "274c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1868
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    const/16 v5, 0x274e

    aput v5, v2, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v2, "274e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1869
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    const/16 v5, 0x2753

    aput v5, v2, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2753.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1870
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    const/16 v5, 0x2754

    aput v5, v2, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2754.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1871
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    const/16 v5, 0x2755

    aput v5, v2, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2755.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1872
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    const/16 v5, 0x2757

    aput v5, v2, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2757.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1873
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    const/16 v5, 0x2763

    aput v5, v2, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2763.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1874
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    const/16 v5, 0x2764

    aput v5, v2, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2764.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1875
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    const/16 v5, 0x2795

    aput v5, v2, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2795.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1876
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    const/16 v5, 0x2796

    aput v5, v2, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2796.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1877
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    const/16 v5, 0x2797

    aput v5, v2, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2797.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1878
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    const/16 v5, 0x27a1

    aput v5, v2, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v2, "27a1.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1879
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    const/16 v5, 0x27b0

    aput v5, v2, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v2, "27b0.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1880
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    const/16 v5, 0x27bf

    aput v5, v2, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v2, "27bf.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1881
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    const/16 v5, 0x2934

    aput v5, v2, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2934.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1882
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    const/16 v5, 0x2935

    aput v5, v2, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2935.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1883
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    const/16 v5, 0x2b05

    aput v5, v2, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2b05.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1884
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    const/16 v5, 0x2b06

    aput v5, v2, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2b06.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1885
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    const/16 v5, 0x2b07

    aput v5, v2, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2b07.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1886
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    const/16 v5, 0x2b1b

    aput v5, v2, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2b1b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1887
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    const/16 v5, 0x2b1c

    aput v5, v2, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2b1c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1888
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    const/16 v5, 0x2b50

    aput v5, v2, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2b50.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1889
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    const/16 v5, 0x2b55

    aput v5, v2, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2b55.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1890
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    const/16 v5, 0x3030

    aput v5, v2, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v2, "3030.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1891
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    const/16 v5, 0x303d

    aput v5, v2, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v2, "303d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1892
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    const/16 v5, 0x3297

    aput v5, v2, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v2, "3297.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1893
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    const/16 v5, 0x3299

    aput v5, v2, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    const-string v2, "3299.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x23
        0x20e3
    .end array-data

    :array_1
    .array-data 4
        0x2a
        0x20e3
    .end array-data

    :array_2
    .array-data 4
        0x30
        0x20e3
    .end array-data

    :array_3
    .array-data 4
        0x31
        0x20e3
    .end array-data

    :array_4
    .array-data 4
        0x32
        0x20e3
    .end array-data

    :array_5
    .array-data 4
        0x33
        0x20e3
    .end array-data

    :array_6
    .array-data 4
        0x34
        0x20e3
    .end array-data

    :array_7
    .array-data 4
        0x35
        0x20e3
    .end array-data

    :array_8
    .array-data 4
        0x36
        0x20e3
    .end array-data

    :array_9
    .array-data 4
        0x37
        0x20e3
    .end array-data

    :array_a
    .array-data 4
        0x38
        0x20e3
    .end array-data

    :array_b
    .array-data 4
        0x39
        0x20e3
    .end array-data

    :array_c
    .array-data 4
        0x1f1e6
        0x1f1e8
    .end array-data

    :array_d
    .array-data 4
        0x1f1e6
        0x1f1e9
    .end array-data

    :array_e
    .array-data 4
        0x1f1e6
        0x1f1ea
    .end array-data

    :array_f
    .array-data 4
        0x1f1e6
        0x1f1eb
    .end array-data

    :array_10
    .array-data 4
        0x1f1e6
        0x1f1ec
    .end array-data

    :array_11
    .array-data 4
        0x1f1e6
        0x1f1ee
    .end array-data

    :array_12
    .array-data 4
        0x1f1e6
        0x1f1f1
    .end array-data

    :array_13
    .array-data 4
        0x1f1e6
        0x1f1f2
    .end array-data

    :array_14
    .array-data 4
        0x1f1e6
        0x1f1f4
    .end array-data

    :array_15
    .array-data 4
        0x1f1e6
        0x1f1f6
    .end array-data

    :array_16
    .array-data 4
        0x1f1e6
        0x1f1f7
    .end array-data

    :array_17
    .array-data 4
        0x1f1e6
        0x1f1f8
    .end array-data

    :array_18
    .array-data 4
        0x1f1e6
        0x1f1f9
    .end array-data

    :array_19
    .array-data 4
        0x1f1e6
        0x1f1fa
    .end array-data

    :array_1a
    .array-data 4
        0x1f1e6
        0x1f1fc
    .end array-data

    :array_1b
    .array-data 4
        0x1f1e6
        0x1f1fd
    .end array-data

    :array_1c
    .array-data 4
        0x1f1e6
        0x1f1ff
    .end array-data

    :array_1d
    .array-data 4
        0x1f1e7
        0x1f1e6
    .end array-data

    :array_1e
    .array-data 4
        0x1f1e7
        0x1f1e7
    .end array-data

    :array_1f
    .array-data 4
        0x1f1e7
        0x1f1e9
    .end array-data

    :array_20
    .array-data 4
        0x1f1e7
        0x1f1ea
    .end array-data

    :array_21
    .array-data 4
        0x1f1e7
        0x1f1eb
    .end array-data

    :array_22
    .array-data 4
        0x1f1e7
        0x1f1ec
    .end array-data

    :array_23
    .array-data 4
        0x1f1e7
        0x1f1ed
    .end array-data

    :array_24
    .array-data 4
        0x1f1e7
        0x1f1ee
    .end array-data

    :array_25
    .array-data 4
        0x1f1e7
        0x1f1ef
    .end array-data

    :array_26
    .array-data 4
        0x1f1e7
        0x1f1f1
    .end array-data

    :array_27
    .array-data 4
        0x1f1e7
        0x1f1f2
    .end array-data

    :array_28
    .array-data 4
        0x1f1e7
        0x1f1f3
    .end array-data

    :array_29
    .array-data 4
        0x1f1e7
        0x1f1f4
    .end array-data

    :array_2a
    .array-data 4
        0x1f1e7
        0x1f1f6
    .end array-data

    :array_2b
    .array-data 4
        0x1f1e7
        0x1f1f7
    .end array-data

    :array_2c
    .array-data 4
        0x1f1e7
        0x1f1f8
    .end array-data

    :array_2d
    .array-data 4
        0x1f1e7
        0x1f1f9
    .end array-data

    :array_2e
    .array-data 4
        0x1f1e7
        0x1f1fb
    .end array-data

    :array_2f
    .array-data 4
        0x1f1e7
        0x1f1fc
    .end array-data

    :array_30
    .array-data 4
        0x1f1e7
        0x1f1fe
    .end array-data

    :array_31
    .array-data 4
        0x1f1e7
        0x1f1ff
    .end array-data

    :array_32
    .array-data 4
        0x1f1e8
        0x1f1e6
    .end array-data

    :array_33
    .array-data 4
        0x1f1e8
        0x1f1e8
    .end array-data

    :array_34
    .array-data 4
        0x1f1e8
        0x1f1e9
    .end array-data

    :array_35
    .array-data 4
        0x1f1e8
        0x1f1eb
    .end array-data

    :array_36
    .array-data 4
        0x1f1e8
        0x1f1ec
    .end array-data

    :array_37
    .array-data 4
        0x1f1e8
        0x1f1ed
    .end array-data

    :array_38
    .array-data 4
        0x1f1e8
        0x1f1ee
    .end array-data

    :array_39
    .array-data 4
        0x1f1e8
        0x1f1f0
    .end array-data

    :array_3a
    .array-data 4
        0x1f1e8
        0x1f1f1
    .end array-data

    :array_3b
    .array-data 4
        0x1f1e8
        0x1f1f2
    .end array-data

    :array_3c
    .array-data 4
        0x1f1e8
        0x1f1f3
    .end array-data

    :array_3d
    .array-data 4
        0x1f1e8
        0x1f1f4
    .end array-data

    :array_3e
    .array-data 4
        0x1f1e8
        0x1f1f5
    .end array-data

    :array_3f
    .array-data 4
        0x1f1e8
        0x1f1f7
    .end array-data

    :array_40
    .array-data 4
        0x1f1e8
        0x1f1fa
    .end array-data

    :array_41
    .array-data 4
        0x1f1e8
        0x1f1fb
    .end array-data

    :array_42
    .array-data 4
        0x1f1e8
        0x1f1fc
    .end array-data

    :array_43
    .array-data 4
        0x1f1e8
        0x1f1fd
    .end array-data

    :array_44
    .array-data 4
        0x1f1e8
        0x1f1fe
    .end array-data

    :array_45
    .array-data 4
        0x1f1e8
        0x1f1ff
    .end array-data

    :array_46
    .array-data 4
        0x1f1e9
        0x1f1ea
    .end array-data

    :array_47
    .array-data 4
        0x1f1e9
        0x1f1ec
    .end array-data

    :array_48
    .array-data 4
        0x1f1e9
        0x1f1ef
    .end array-data

    :array_49
    .array-data 4
        0x1f1e9
        0x1f1f0
    .end array-data

    :array_4a
    .array-data 4
        0x1f1e9
        0x1f1f2
    .end array-data

    :array_4b
    .array-data 4
        0x1f1e9
        0x1f1f4
    .end array-data

    :array_4c
    .array-data 4
        0x1f1e9
        0x1f1ff
    .end array-data

    :array_4d
    .array-data 4
        0x1f1ea
        0x1f1e6
    .end array-data

    :array_4e
    .array-data 4
        0x1f1ea
        0x1f1e8
    .end array-data

    :array_4f
    .array-data 4
        0x1f1ea
        0x1f1ea
    .end array-data

    :array_50
    .array-data 4
        0x1f1ea
        0x1f1ec
    .end array-data

    :array_51
    .array-data 4
        0x1f1ea
        0x1f1ed
    .end array-data

    :array_52
    .array-data 4
        0x1f1ea
        0x1f1f7
    .end array-data

    :array_53
    .array-data 4
        0x1f1ea
        0x1f1f8
    .end array-data

    :array_54
    .array-data 4
        0x1f1ea
        0x1f1f9
    .end array-data

    :array_55
    .array-data 4
        0x1f1ea
        0x1f1fa
    .end array-data

    :array_56
    .array-data 4
        0x1f1eb
        0x1f1ee
    .end array-data

    :array_57
    .array-data 4
        0x1f1eb
        0x1f1ef
    .end array-data

    :array_58
    .array-data 4
        0x1f1eb
        0x1f1f0
    .end array-data

    :array_59
    .array-data 4
        0x1f1eb
        0x1f1f2
    .end array-data

    :array_5a
    .array-data 4
        0x1f1eb
        0x1f1f4
    .end array-data

    :array_5b
    .array-data 4
        0x1f1eb
        0x1f1f7
    .end array-data

    :array_5c
    .array-data 4
        0x1f1ec
        0x1f1e6
    .end array-data

    :array_5d
    .array-data 4
        0x1f1ec
        0x1f1e7
    .end array-data

    :array_5e
    .array-data 4
        0x1f1ec
        0x1f1e9
    .end array-data

    :array_5f
    .array-data 4
        0x1f1ec
        0x1f1ea
    .end array-data

    :array_60
    .array-data 4
        0x1f1ec
        0x1f1eb
    .end array-data

    :array_61
    .array-data 4
        0x1f1ec
        0x1f1ec
    .end array-data

    :array_62
    .array-data 4
        0x1f1ec
        0x1f1ed
    .end array-data

    :array_63
    .array-data 4
        0x1f1ec
        0x1f1ee
    .end array-data

    :array_64
    .array-data 4
        0x1f1ec
        0x1f1f1
    .end array-data

    :array_65
    .array-data 4
        0x1f1ec
        0x1f1f2
    .end array-data

    :array_66
    .array-data 4
        0x1f1ec
        0x1f1f3
    .end array-data

    :array_67
    .array-data 4
        0x1f1ec
        0x1f1f5
    .end array-data

    :array_68
    .array-data 4
        0x1f1ec
        0x1f1f6
    .end array-data

    :array_69
    .array-data 4
        0x1f1ec
        0x1f1f7
    .end array-data

    :array_6a
    .array-data 4
        0x1f1ec
        0x1f1f8
    .end array-data

    :array_6b
    .array-data 4
        0x1f1ec
        0x1f1f9
    .end array-data

    :array_6c
    .array-data 4
        0x1f1ec
        0x1f1fa
    .end array-data

    :array_6d
    .array-data 4
        0x1f1ec
        0x1f1fc
    .end array-data

    :array_6e
    .array-data 4
        0x1f1ec
        0x1f1fe
    .end array-data

    :array_6f
    .array-data 4
        0x1f1ed
        0x1f1f0
    .end array-data

    :array_70
    .array-data 4
        0x1f1ed
        0x1f1f2
    .end array-data

    :array_71
    .array-data 4
        0x1f1ed
        0x1f1f3
    .end array-data

    :array_72
    .array-data 4
        0x1f1ed
        0x1f1f7
    .end array-data

    :array_73
    .array-data 4
        0x1f1ed
        0x1f1f9
    .end array-data

    :array_74
    .array-data 4
        0x1f1ed
        0x1f1fa
    .end array-data

    :array_75
    .array-data 4
        0x1f1ee
        0x1f1e8
    .end array-data

    :array_76
    .array-data 4
        0x1f1ee
        0x1f1e9
    .end array-data

    :array_77
    .array-data 4
        0x1f1ee
        0x1f1ea
    .end array-data

    :array_78
    .array-data 4
        0x1f1ee
        0x1f1f1
    .end array-data

    :array_79
    .array-data 4
        0x1f1ee
        0x1f1f2
    .end array-data

    :array_7a
    .array-data 4
        0x1f1ee
        0x1f1f3
    .end array-data

    :array_7b
    .array-data 4
        0x1f1ee
        0x1f1f4
    .end array-data

    :array_7c
    .array-data 4
        0x1f1ee
        0x1f1f6
    .end array-data

    :array_7d
    .array-data 4
        0x1f1ee
        0x1f1f7
    .end array-data

    :array_7e
    .array-data 4
        0x1f1ee
        0x1f1f8
    .end array-data

    :array_7f
    .array-data 4
        0x1f1ee
        0x1f1f9
    .end array-data

    :array_80
    .array-data 4
        0x1f1ef
        0x1f1ea
    .end array-data

    :array_81
    .array-data 4
        0x1f1ef
        0x1f1f2
    .end array-data

    :array_82
    .array-data 4
        0x1f1ef
        0x1f1f4
    .end array-data

    :array_83
    .array-data 4
        0x1f1ef
        0x1f1f5
    .end array-data

    :array_84
    .array-data 4
        0x1f1f0
        0x1f1ea
    .end array-data

    :array_85
    .array-data 4
        0x1f1f0
        0x1f1ec
    .end array-data

    :array_86
    .array-data 4
        0x1f1f0
        0x1f1ed
    .end array-data

    :array_87
    .array-data 4
        0x1f1f0
        0x1f1ee
    .end array-data

    :array_88
    .array-data 4
        0x1f1f0
        0x1f1f2
    .end array-data

    :array_89
    .array-data 4
        0x1f1f0
        0x1f1f3
    .end array-data

    :array_8a
    .array-data 4
        0x1f1f0
        0x1f1f5
    .end array-data

    :array_8b
    .array-data 4
        0x1f1f0
        0x1f1f7
    .end array-data

    :array_8c
    .array-data 4
        0x1f1f0
        0x1f1fc
    .end array-data

    :array_8d
    .array-data 4
        0x1f1f0
        0x1f1fe
    .end array-data

    :array_8e
    .array-data 4
        0x1f1f0
        0x1f1ff
    .end array-data

    :array_8f
    .array-data 4
        0x1f1f1
        0x1f1e6
    .end array-data

    :array_90
    .array-data 4
        0x1f1f1
        0x1f1e7
    .end array-data

    :array_91
    .array-data 4
        0x1f1f1
        0x1f1e8
    .end array-data

    :array_92
    .array-data 4
        0x1f1f1
        0x1f1ee
    .end array-data

    :array_93
    .array-data 4
        0x1f1f1
        0x1f1f0
    .end array-data

    :array_94
    .array-data 4
        0x1f1f1
        0x1f1f7
    .end array-data

    :array_95
    .array-data 4
        0x1f1f1
        0x1f1f8
    .end array-data

    :array_96
    .array-data 4
        0x1f1f1
        0x1f1f9
    .end array-data

    :array_97
    .array-data 4
        0x1f1f1
        0x1f1fa
    .end array-data

    :array_98
    .array-data 4
        0x1f1f1
        0x1f1fb
    .end array-data

    :array_99
    .array-data 4
        0x1f1f1
        0x1f1fe
    .end array-data

    :array_9a
    .array-data 4
        0x1f1f2
        0x1f1e6
    .end array-data

    :array_9b
    .array-data 4
        0x1f1f2
        0x1f1e8
    .end array-data

    :array_9c
    .array-data 4
        0x1f1f2
        0x1f1e9
    .end array-data

    :array_9d
    .array-data 4
        0x1f1f2
        0x1f1ea
    .end array-data

    :array_9e
    .array-data 4
        0x1f1f2
        0x1f1eb
    .end array-data

    :array_9f
    .array-data 4
        0x1f1f2
        0x1f1ec
    .end array-data

    :array_a0
    .array-data 4
        0x1f1f2
        0x1f1ed
    .end array-data

    :array_a1
    .array-data 4
        0x1f1f2
        0x1f1f0
    .end array-data

    :array_a2
    .array-data 4
        0x1f1f2
        0x1f1f1
    .end array-data

    :array_a3
    .array-data 4
        0x1f1f2
        0x1f1f2
    .end array-data

    :array_a4
    .array-data 4
        0x1f1f2
        0x1f1f3
    .end array-data

    :array_a5
    .array-data 4
        0x1f1f2
        0x1f1f4
    .end array-data

    :array_a6
    .array-data 4
        0x1f1f2
        0x1f1f5
    .end array-data

    :array_a7
    .array-data 4
        0x1f1f2
        0x1f1f6
    .end array-data

    :array_a8
    .array-data 4
        0x1f1f2
        0x1f1f7
    .end array-data

    :array_a9
    .array-data 4
        0x1f1f2
        0x1f1f8
    .end array-data

    :array_aa
    .array-data 4
        0x1f1f2
        0x1f1f9
    .end array-data

    :array_ab
    .array-data 4
        0x1f1f2
        0x1f1fa
    .end array-data

    :array_ac
    .array-data 4
        0x1f1f2
        0x1f1fb
    .end array-data

    :array_ad
    .array-data 4
        0x1f1f2
        0x1f1fc
    .end array-data

    :array_ae
    .array-data 4
        0x1f1f2
        0x1f1fd
    .end array-data

    :array_af
    .array-data 4
        0x1f1f2
        0x1f1fe
    .end array-data

    :array_b0
    .array-data 4
        0x1f1f2
        0x1f1ff
    .end array-data

    :array_b1
    .array-data 4
        0x1f1f3
        0x1f1e6
    .end array-data

    :array_b2
    .array-data 4
        0x1f1f3
        0x1f1e8
    .end array-data

    :array_b3
    .array-data 4
        0x1f1f3
        0x1f1ea
    .end array-data

    :array_b4
    .array-data 4
        0x1f1f3
        0x1f1eb
    .end array-data

    :array_b5
    .array-data 4
        0x1f1f3
        0x1f1ec
    .end array-data

    :array_b6
    .array-data 4
        0x1f1f3
        0x1f1ee
    .end array-data

    :array_b7
    .array-data 4
        0x1f1f3
        0x1f1f1
    .end array-data

    :array_b8
    .array-data 4
        0x1f1f3
        0x1f1f4
    .end array-data

    :array_b9
    .array-data 4
        0x1f1f3
        0x1f1f5
    .end array-data

    :array_ba
    .array-data 4
        0x1f1f3
        0x1f1f7
    .end array-data

    :array_bb
    .array-data 4
        0x1f1f3
        0x1f1fa
    .end array-data

    :array_bc
    .array-data 4
        0x1f1f3
        0x1f1ff
    .end array-data

    :array_bd
    .array-data 4
        0x1f1f4
        0x1f1f2
    .end array-data

    :array_be
    .array-data 4
        0x1f1f5
        0x1f1e6
    .end array-data

    :array_bf
    .array-data 4
        0x1f1f5
        0x1f1ea
    .end array-data

    :array_c0
    .array-data 4
        0x1f1f5
        0x1f1eb
    .end array-data

    :array_c1
    .array-data 4
        0x1f1f5
        0x1f1ec
    .end array-data

    :array_c2
    .array-data 4
        0x1f1f5
        0x1f1ed
    .end array-data

    :array_c3
    .array-data 4
        0x1f1f5
        0x1f1f0
    .end array-data

    :array_c4
    .array-data 4
        0x1f1f5
        0x1f1f1
    .end array-data

    :array_c5
    .array-data 4
        0x1f1f5
        0x1f1f2
    .end array-data

    :array_c6
    .array-data 4
        0x1f1f5
        0x1f1f3
    .end array-data

    :array_c7
    .array-data 4
        0x1f1f5
        0x1f1f7
    .end array-data

    :array_c8
    .array-data 4
        0x1f1f5
        0x1f1f8
    .end array-data

    :array_c9
    .array-data 4
        0x1f1f5
        0x1f1f9
    .end array-data

    :array_ca
    .array-data 4
        0x1f1f5
        0x1f1fc
    .end array-data

    :array_cb
    .array-data 4
        0x1f1f5
        0x1f1fe
    .end array-data

    :array_cc
    .array-data 4
        0x1f1f6
        0x1f1e6
    .end array-data

    :array_cd
    .array-data 4
        0x1f1f7
        0x1f1ea
    .end array-data

    :array_ce
    .array-data 4
        0x1f1f7
        0x1f1f4
    .end array-data

    :array_cf
    .array-data 4
        0x1f1f7
        0x1f1f8
    .end array-data

    :array_d0
    .array-data 4
        0x1f1f7
        0x1f1fa
    .end array-data

    :array_d1
    .array-data 4
        0x1f1f7
        0x1f1fc
    .end array-data

    :array_d2
    .array-data 4
        0x1f1f8
        0x1f1e6
    .end array-data

    :array_d3
    .array-data 4
        0x1f1f8
        0x1f1e7
    .end array-data

    :array_d4
    .array-data 4
        0x1f1f8
        0x1f1e8
    .end array-data

    :array_d5
    .array-data 4
        0x1f1f8
        0x1f1e9
    .end array-data

    :array_d6
    .array-data 4
        0x1f1f8
        0x1f1ea
    .end array-data

    :array_d7
    .array-data 4
        0x1f1f8
        0x1f1ec
    .end array-data

    :array_d8
    .array-data 4
        0x1f1f8
        0x1f1ed
    .end array-data

    :array_d9
    .array-data 4
        0x1f1f8
        0x1f1ee
    .end array-data

    :array_da
    .array-data 4
        0x1f1f8
        0x1f1ef
    .end array-data

    :array_db
    .array-data 4
        0x1f1f8
        0x1f1f0
    .end array-data

    :array_dc
    .array-data 4
        0x1f1f8
        0x1f1f1
    .end array-data

    :array_dd
    .array-data 4
        0x1f1f8
        0x1f1f2
    .end array-data

    :array_de
    .array-data 4
        0x1f1f8
        0x1f1f3
    .end array-data

    :array_df
    .array-data 4
        0x1f1f8
        0x1f1f4
    .end array-data

    :array_e0
    .array-data 4
        0x1f1f8
        0x1f1f7
    .end array-data

    :array_e1
    .array-data 4
        0x1f1f8
        0x1f1f8
    .end array-data

    :array_e2
    .array-data 4
        0x1f1f8
        0x1f1f9
    .end array-data

    :array_e3
    .array-data 4
        0x1f1f8
        0x1f1fb
    .end array-data

    :array_e4
    .array-data 4
        0x1f1f8
        0x1f1fd
    .end array-data

    :array_e5
    .array-data 4
        0x1f1f8
        0x1f1fe
    .end array-data

    :array_e6
    .array-data 4
        0x1f1f8
        0x1f1ff
    .end array-data

    :array_e7
    .array-data 4
        0x1f1f9
        0x1f1e6
    .end array-data

    :array_e8
    .array-data 4
        0x1f1f9
        0x1f1e8
    .end array-data

    :array_e9
    .array-data 4
        0x1f1f9
        0x1f1e9
    .end array-data

    :array_ea
    .array-data 4
        0x1f1f9
        0x1f1eb
    .end array-data

    :array_eb
    .array-data 4
        0x1f1f9
        0x1f1ec
    .end array-data

    :array_ec
    .array-data 4
        0x1f1f9
        0x1f1ed
    .end array-data

    :array_ed
    .array-data 4
        0x1f1f9
        0x1f1ef
    .end array-data

    :array_ee
    .array-data 4
        0x1f1f9
        0x1f1f0
    .end array-data

    :array_ef
    .array-data 4
        0x1f1f9
        0x1f1f1
    .end array-data

    :array_f0
    .array-data 4
        0x1f1f9
        0x1f1f2
    .end array-data

    :array_f1
    .array-data 4
        0x1f1f9
        0x1f1f3
    .end array-data

    :array_f2
    .array-data 4
        0x1f1f9
        0x1f1f4
    .end array-data

    :array_f3
    .array-data 4
        0x1f1f9
        0x1f1f7
    .end array-data

    :array_f4
    .array-data 4
        0x1f1f9
        0x1f1f9
    .end array-data

    :array_f5
    .array-data 4
        0x1f1f9
        0x1f1fb
    .end array-data

    :array_f6
    .array-data 4
        0x1f1f9
        0x1f1fc
    .end array-data

    :array_f7
    .array-data 4
        0x1f1f9
        0x1f1ff
    .end array-data

    :array_f8
    .array-data 4
        0x1f1fa
        0x1f1e6
    .end array-data

    :array_f9
    .array-data 4
        0x1f1fa
        0x1f1ec
    .end array-data

    :array_fa
    .array-data 4
        0x1f1fa
        0x1f1f2
    .end array-data

    :array_fb
    .array-data 4
        0x1f1fa
        0x1f1f8
    .end array-data

    :array_fc
    .array-data 4
        0x1f1fa
        0x1f1fe
    .end array-data

    :array_fd
    .array-data 4
        0x1f1fa
        0x1f1ff
    .end array-data

    :array_fe
    .array-data 4
        0x1f1fb
        0x1f1e6
    .end array-data

    :array_ff
    .array-data 4
        0x1f1fb
        0x1f1e8
    .end array-data

    :array_100
    .array-data 4
        0x1f1fb
        0x1f1ea
    .end array-data

    :array_101
    .array-data 4
        0x1f1fb
        0x1f1ec
    .end array-data

    :array_102
    .array-data 4
        0x1f1fb
        0x1f1ee
    .end array-data

    :array_103
    .array-data 4
        0x1f1fb
        0x1f1f3
    .end array-data

    :array_104
    .array-data 4
        0x1f1fb
        0x1f1fa
    .end array-data

    :array_105
    .array-data 4
        0x1f1fc
        0x1f1eb
    .end array-data

    :array_106
    .array-data 4
        0x1f1fc
        0x1f1f8
    .end array-data

    :array_107
    .array-data 4
        0x1f1fd
        0x1f1f0
    .end array-data

    :array_108
    .array-data 4
        0x1f1fe
        0x1f1ea
    .end array-data

    :array_109
    .array-data 4
        0x1f1fe
        0x1f1f9
    .end array-data

    :array_10a
    .array-data 4
        0x1f1ff
        0x1f1e6
    .end array-data

    :array_10b
    .array-data 4
        0x1f1ff
        0x1f1f2
    .end array-data

    :array_10c
    .array-data 4
        0x1f1ff
        0x1f1fc
    .end array-data

    :array_10d
    .array-data 4
        0x1f385
        0x1f3fb
    .end array-data

    :array_10e
    .array-data 4
        0x1f385
        0x1f3fc
    .end array-data

    :array_10f
    .array-data 4
        0x1f385
        0x1f3fd
    .end array-data

    :array_110
    .array-data 4
        0x1f385
        0x1f3fe
    .end array-data

    :array_111
    .array-data 4
        0x1f385
        0x1f3ff
    .end array-data

    :array_112
    .array-data 4
        0x1f3c3
        0x1f3fb
    .end array-data

    :array_113
    .array-data 4
        0x1f3c3
        0x1f3fc
    .end array-data

    :array_114
    .array-data 4
        0x1f3c3
        0x1f3fd
    .end array-data

    :array_115
    .array-data 4
        0x1f3c3
        0x1f3fe
    .end array-data

    :array_116
    .array-data 4
        0x1f3c3
        0x1f3ff
    .end array-data

    :array_117
    .array-data 4
        0x1f3c4
        0x1f3fb
    .end array-data

    :array_118
    .array-data 4
        0x1f3c4
        0x1f3fc
    .end array-data

    :array_119
    .array-data 4
        0x1f3c4
        0x1f3fd
    .end array-data

    :array_11a
    .array-data 4
        0x1f3c4
        0x1f3fe
    .end array-data

    :array_11b
    .array-data 4
        0x1f3c4
        0x1f3ff
    .end array-data

    :array_11c
    .array-data 4
        0x1f3c7
        0x1f3fb
    .end array-data

    :array_11d
    .array-data 4
        0x1f3c7
        0x1f3fc
    .end array-data

    :array_11e
    .array-data 4
        0x1f3c7
        0x1f3fd
    .end array-data

    :array_11f
    .array-data 4
        0x1f3c7
        0x1f3fe
    .end array-data

    :array_120
    .array-data 4
        0x1f3c7
        0x1f3ff
    .end array-data

    :array_121
    .array-data 4
        0x1f3ca
        0x1f3fb
    .end array-data

    :array_122
    .array-data 4
        0x1f3ca
        0x1f3fc
    .end array-data

    :array_123
    .array-data 4
        0x1f3ca
        0x1f3fd
    .end array-data

    :array_124
    .array-data 4
        0x1f3ca
        0x1f3fe
    .end array-data

    :array_125
    .array-data 4
        0x1f3ca
        0x1f3ff
    .end array-data

    :array_126
    .array-data 4
        0x1f3cb
        0x1f3fb
    .end array-data

    :array_127
    .array-data 4
        0x1f3cb
        0x1f3fc
    .end array-data

    :array_128
    .array-data 4
        0x1f3cb
        0x1f3fd
    .end array-data

    :array_129
    .array-data 4
        0x1f3cb
        0x1f3fe
    .end array-data

    :array_12a
    .array-data 4
        0x1f3cb
        0x1f3ff
    .end array-data

    :array_12b
    .array-data 4
        0x1f3f3
        0x1f308
    .end array-data

    :array_12c
    .array-data 4
        0x1f441
        0x1f5e8
    .end array-data

    :array_12d
    .array-data 4
        0x1f442
        0x1f3fb
    .end array-data

    :array_12e
    .array-data 4
        0x1f442
        0x1f3fc
    .end array-data

    :array_12f
    .array-data 4
        0x1f442
        0x1f3fd
    .end array-data

    :array_130
    .array-data 4
        0x1f442
        0x1f3fe
    .end array-data

    :array_131
    .array-data 4
        0x1f442
        0x1f3ff
    .end array-data

    :array_132
    .array-data 4
        0x1f443
        0x1f3fb
    .end array-data

    :array_133
    .array-data 4
        0x1f443
        0x1f3fc
    .end array-data

    :array_134
    .array-data 4
        0x1f443
        0x1f3fd
    .end array-data

    :array_135
    .array-data 4
        0x1f443
        0x1f3fe
    .end array-data

    :array_136
    .array-data 4
        0x1f443
        0x1f3ff
    .end array-data

    :array_137
    .array-data 4
        0x1f446
        0x1f3fb
    .end array-data

    :array_138
    .array-data 4
        0x1f446
        0x1f3fc
    .end array-data

    :array_139
    .array-data 4
        0x1f446
        0x1f3fd
    .end array-data

    :array_13a
    .array-data 4
        0x1f446
        0x1f3fe
    .end array-data

    :array_13b
    .array-data 4
        0x1f446
        0x1f3ff
    .end array-data

    :array_13c
    .array-data 4
        0x1f447
        0x1f3fb
    .end array-data

    :array_13d
    .array-data 4
        0x1f447
        0x1f3fc
    .end array-data

    :array_13e
    .array-data 4
        0x1f447
        0x1f3fd
    .end array-data

    :array_13f
    .array-data 4
        0x1f447
        0x1f3fe
    .end array-data

    :array_140
    .array-data 4
        0x1f447
        0x1f3ff
    .end array-data

    :array_141
    .array-data 4
        0x1f448
        0x1f3fb
    .end array-data

    :array_142
    .array-data 4
        0x1f448
        0x1f3fc
    .end array-data

    :array_143
    .array-data 4
        0x1f448
        0x1f3fd
    .end array-data

    :array_144
    .array-data 4
        0x1f448
        0x1f3fe
    .end array-data

    :array_145
    .array-data 4
        0x1f448
        0x1f3ff
    .end array-data

    :array_146
    .array-data 4
        0x1f449
        0x1f3fb
    .end array-data

    :array_147
    .array-data 4
        0x1f449
        0x1f3fc
    .end array-data

    :array_148
    .array-data 4
        0x1f449
        0x1f3fd
    .end array-data

    :array_149
    .array-data 4
        0x1f449
        0x1f3fe
    .end array-data

    :array_14a
    .array-data 4
        0x1f449
        0x1f3ff
    .end array-data

    :array_14b
    .array-data 4
        0x1f44a
        0x1f3fb
    .end array-data

    :array_14c
    .array-data 4
        0x1f44a
        0x1f3fc
    .end array-data

    :array_14d
    .array-data 4
        0x1f44a
        0x1f3fd
    .end array-data

    :array_14e
    .array-data 4
        0x1f44a
        0x1f3fe
    .end array-data

    :array_14f
    .array-data 4
        0x1f44a
        0x1f3ff
    .end array-data

    :array_150
    .array-data 4
        0x1f44b
        0x1f3fb
    .end array-data

    :array_151
    .array-data 4
        0x1f44b
        0x1f3fc
    .end array-data

    :array_152
    .array-data 4
        0x1f44b
        0x1f3fd
    .end array-data

    :array_153
    .array-data 4
        0x1f44b
        0x1f3fe
    .end array-data

    :array_154
    .array-data 4
        0x1f44b
        0x1f3ff
    .end array-data

    :array_155
    .array-data 4
        0x1f44c
        0x1f3fb
    .end array-data

    :array_156
    .array-data 4
        0x1f44c
        0x1f3fc
    .end array-data

    :array_157
    .array-data 4
        0x1f44c
        0x1f3fd
    .end array-data

    :array_158
    .array-data 4
        0x1f44c
        0x1f3fe
    .end array-data

    :array_159
    .array-data 4
        0x1f44c
        0x1f3ff
    .end array-data

    :array_15a
    .array-data 4
        0x1f44d
        0x1f3fb
    .end array-data

    :array_15b
    .array-data 4
        0x1f44d
        0x1f3fc
    .end array-data

    :array_15c
    .array-data 4
        0x1f44d
        0x1f3fd
    .end array-data

    :array_15d
    .array-data 4
        0x1f44d
        0x1f3fe
    .end array-data

    :array_15e
    .array-data 4
        0x1f44d
        0x1f3ff
    .end array-data

    :array_15f
    .array-data 4
        0x1f44e
        0x1f3fb
    .end array-data

    :array_160
    .array-data 4
        0x1f44e
        0x1f3fc
    .end array-data

    :array_161
    .array-data 4
        0x1f44e
        0x1f3fd
    .end array-data

    :array_162
    .array-data 4
        0x1f44e
        0x1f3fe
    .end array-data

    :array_163
    .array-data 4
        0x1f44e
        0x1f3ff
    .end array-data

    :array_164
    .array-data 4
        0x1f44f
        0x1f3fb
    .end array-data

    :array_165
    .array-data 4
        0x1f44f
        0x1f3fc
    .end array-data

    :array_166
    .array-data 4
        0x1f44f
        0x1f3fd
    .end array-data

    :array_167
    .array-data 4
        0x1f44f
        0x1f3fe
    .end array-data

    :array_168
    .array-data 4
        0x1f44f
        0x1f3ff
    .end array-data

    :array_169
    .array-data 4
        0x1f450
        0x1f3fb
    .end array-data

    :array_16a
    .array-data 4
        0x1f450
        0x1f3fc
    .end array-data

    :array_16b
    .array-data 4
        0x1f450
        0x1f3fd
    .end array-data

    :array_16c
    .array-data 4
        0x1f450
        0x1f3fe
    .end array-data

    :array_16d
    .array-data 4
        0x1f450
        0x1f3ff
    .end array-data

    :array_16e
    .array-data 4
        0x1f466
        0x1f3fb
    .end array-data

    :array_16f
    .array-data 4
        0x1f466
        0x1f3fc
    .end array-data

    :array_170
    .array-data 4
        0x1f466
        0x1f3fd
    .end array-data

    :array_171
    .array-data 4
        0x1f466
        0x1f3fe
    .end array-data

    :array_172
    .array-data 4
        0x1f466
        0x1f3ff
    .end array-data

    :array_173
    .array-data 4
        0x1f467
        0x1f3fb
    .end array-data

    :array_174
    .array-data 4
        0x1f467
        0x1f3fc
    .end array-data

    :array_175
    .array-data 4
        0x1f467
        0x1f3fd
    .end array-data

    :array_176
    .array-data 4
        0x1f467
        0x1f3fe
    .end array-data

    :array_177
    .array-data 4
        0x1f467
        0x1f3ff
    .end array-data

    :array_178
    .array-data 4
        0x1f468
        0x1f3fb
    .end array-data

    :array_179
    .array-data 4
        0x1f468
        0x1f3fc
    .end array-data

    :array_17a
    .array-data 4
        0x1f468
        0x1f3fd
    .end array-data

    :array_17b
    .array-data 4
        0x1f468
        0x1f3fe
    .end array-data

    :array_17c
    .array-data 4
        0x1f468
        0x1f3ff
    .end array-data

    :array_17d
    .array-data 4
        0x1f468
        0x1f468
        0x1f466
        0x1f466
    .end array-data

    :array_17e
    .array-data 4
        0x1f468
        0x1f468
        0x1f466
    .end array-data

    :array_17f
    .array-data 4
        0x1f468
        0x1f468
        0x1f467
        0x1f466
    .end array-data

    :array_180
    .array-data 4
        0x1f468
        0x1f468
        0x1f467
        0x1f467
    .end array-data

    :array_181
    .array-data 4
        0x1f468
        0x1f468
        0x1f467
    .end array-data

    :array_182
    .array-data 4
        0x1f468
        0x1f469
        0x1f466
        0x1f466
    .end array-data

    :array_183
    .array-data 4
        0x1f468
        0x1f469
        0x1f467
        0x1f466
    .end array-data

    :array_184
    .array-data 4
        0x1f468
        0x1f469
        0x1f467
        0x1f467
    .end array-data

    :array_185
    .array-data 4
        0x1f468
        0x1f469
        0x1f467
    .end array-data

    :array_186
    .array-data 4
        0x1f468
        0x2764
        0x1f468
    .end array-data

    :array_187
    .array-data 4
        0x1f468
        0x2764
        0x1f48b
        0x1f468
    .end array-data

    :array_188
    .array-data 4
        0x1f469
        0x1f3fb
    .end array-data

    :array_189
    .array-data 4
        0x1f469
        0x1f3fc
    .end array-data

    :array_18a
    .array-data 4
        0x1f469
        0x1f3fd
    .end array-data

    :array_18b
    .array-data 4
        0x1f469
        0x1f3fe
    .end array-data

    :array_18c
    .array-data 4
        0x1f469
        0x1f3ff
    .end array-data

    :array_18d
    .array-data 4
        0x1f469
        0x1f469
        0x1f466
        0x1f466
    .end array-data

    :array_18e
    .array-data 4
        0x1f469
        0x1f469
        0x1f466
    .end array-data

    :array_18f
    .array-data 4
        0x1f469
        0x1f469
        0x1f467
        0x1f466
    .end array-data

    :array_190
    .array-data 4
        0x1f469
        0x1f469
        0x1f467
        0x1f467
    .end array-data

    :array_191
    .array-data 4
        0x1f469
        0x1f469
        0x1f467
    .end array-data

    :array_192
    .array-data 4
        0x1f469
        0x2764
        0x1f469
    .end array-data

    :array_193
    .array-data 4
        0x1f469
        0x2764
        0x1f48b
        0x1f469
    .end array-data

    :array_194
    .array-data 4
        0x1f46e
        0x1f3fb
    .end array-data

    :array_195
    .array-data 4
        0x1f46e
        0x1f3fc
    .end array-data

    :array_196
    .array-data 4
        0x1f46e
        0x1f3fd
    .end array-data

    :array_197
    .array-data 4
        0x1f46e
        0x1f3fe
    .end array-data

    :array_198
    .array-data 4
        0x1f46e
        0x1f3ff
    .end array-data

    :array_199
    .array-data 4
        0x1f470
        0x1f3fb
    .end array-data

    :array_19a
    .array-data 4
        0x1f470
        0x1f3fc
    .end array-data

    :array_19b
    .array-data 4
        0x1f470
        0x1f3fd
    .end array-data

    :array_19c
    .array-data 4
        0x1f470
        0x1f3fe
    .end array-data

    :array_19d
    .array-data 4
        0x1f470
        0x1f3ff
    .end array-data

    :array_19e
    .array-data 4
        0x1f471
        0x1f3fb
    .end array-data

    :array_19f
    .array-data 4
        0x1f471
        0x1f3fc
    .end array-data

    :array_1a0
    .array-data 4
        0x1f471
        0x1f3fd
    .end array-data

    :array_1a1
    .array-data 4
        0x1f471
        0x1f3fe
    .end array-data

    :array_1a2
    .array-data 4
        0x1f471
        0x1f3ff
    .end array-data

    :array_1a3
    .array-data 4
        0x1f472
        0x1f3fb
    .end array-data

    :array_1a4
    .array-data 4
        0x1f472
        0x1f3fc
    .end array-data

    :array_1a5
    .array-data 4
        0x1f472
        0x1f3fd
    .end array-data

    :array_1a6
    .array-data 4
        0x1f472
        0x1f3fe
    .end array-data

    :array_1a7
    .array-data 4
        0x1f472
        0x1f3ff
    .end array-data

    :array_1a8
    .array-data 4
        0x1f473
        0x1f3fb
    .end array-data

    :array_1a9
    .array-data 4
        0x1f473
        0x1f3fc
    .end array-data

    :array_1aa
    .array-data 4
        0x1f473
        0x1f3fd
    .end array-data

    :array_1ab
    .array-data 4
        0x1f473
        0x1f3fe
    .end array-data

    :array_1ac
    .array-data 4
        0x1f473
        0x1f3ff
    .end array-data

    :array_1ad
    .array-data 4
        0x1f474
        0x1f3fb
    .end array-data

    :array_1ae
    .array-data 4
        0x1f474
        0x1f3fc
    .end array-data

    :array_1af
    .array-data 4
        0x1f474
        0x1f3fd
    .end array-data

    :array_1b0
    .array-data 4
        0x1f474
        0x1f3fe
    .end array-data

    :array_1b1
    .array-data 4
        0x1f474
        0x1f3ff
    .end array-data

    :array_1b2
    .array-data 4
        0x1f475
        0x1f3fb
    .end array-data

    :array_1b3
    .array-data 4
        0x1f475
        0x1f3fc
    .end array-data

    :array_1b4
    .array-data 4
        0x1f475
        0x1f3fd
    .end array-data

    :array_1b5
    .array-data 4
        0x1f475
        0x1f3fe
    .end array-data

    :array_1b6
    .array-data 4
        0x1f475
        0x1f3ff
    .end array-data

    :array_1b7
    .array-data 4
        0x1f476
        0x1f3fb
    .end array-data

    :array_1b8
    .array-data 4
        0x1f476
        0x1f3fc
    .end array-data

    :array_1b9
    .array-data 4
        0x1f476
        0x1f3fd
    .end array-data

    :array_1ba
    .array-data 4
        0x1f476
        0x1f3fe
    .end array-data

    :array_1bb
    .array-data 4
        0x1f476
        0x1f3ff
    .end array-data

    :array_1bc
    .array-data 4
        0x1f477
        0x1f3fb
    .end array-data

    :array_1bd
    .array-data 4
        0x1f477
        0x1f3fc
    .end array-data

    :array_1be
    .array-data 4
        0x1f477
        0x1f3fd
    .end array-data

    :array_1bf
    .array-data 4
        0x1f477
        0x1f3fe
    .end array-data

    :array_1c0
    .array-data 4
        0x1f477
        0x1f3ff
    .end array-data

    :array_1c1
    .array-data 4
        0x1f478
        0x1f3fb
    .end array-data

    :array_1c2
    .array-data 4
        0x1f478
        0x1f3fc
    .end array-data

    :array_1c3
    .array-data 4
        0x1f478
        0x1f3fd
    .end array-data

    :array_1c4
    .array-data 4
        0x1f478
        0x1f3fe
    .end array-data

    :array_1c5
    .array-data 4
        0x1f478
        0x1f3ff
    .end array-data

    :array_1c6
    .array-data 4
        0x1f47c
        0x1f3fb
    .end array-data

    :array_1c7
    .array-data 4
        0x1f47c
        0x1f3fc
    .end array-data

    :array_1c8
    .array-data 4
        0x1f47c
        0x1f3fd
    .end array-data

    :array_1c9
    .array-data 4
        0x1f47c
        0x1f3fe
    .end array-data

    :array_1ca
    .array-data 4
        0x1f47c
        0x1f3ff
    .end array-data

    :array_1cb
    .array-data 4
        0x1f481
        0x1f3fb
    .end array-data

    :array_1cc
    .array-data 4
        0x1f481
        0x1f3fc
    .end array-data

    :array_1cd
    .array-data 4
        0x1f481
        0x1f3fd
    .end array-data

    :array_1ce
    .array-data 4
        0x1f481
        0x1f3fe
    .end array-data

    :array_1cf
    .array-data 4
        0x1f481
        0x1f3ff
    .end array-data

    :array_1d0
    .array-data 4
        0x1f482
        0x1f3fb
    .end array-data

    :array_1d1
    .array-data 4
        0x1f482
        0x1f3fc
    .end array-data

    :array_1d2
    .array-data 4
        0x1f482
        0x1f3fd
    .end array-data

    :array_1d3
    .array-data 4
        0x1f482
        0x1f3fe
    .end array-data

    :array_1d4
    .array-data 4
        0x1f482
        0x1f3ff
    .end array-data

    :array_1d5
    .array-data 4
        0x1f483
        0x1f3fb
    .end array-data

    :array_1d6
    .array-data 4
        0x1f483
        0x1f3fc
    .end array-data

    :array_1d7
    .array-data 4
        0x1f483
        0x1f3fd
    .end array-data

    :array_1d8
    .array-data 4
        0x1f483
        0x1f3fe
    .end array-data

    :array_1d9
    .array-data 4
        0x1f483
        0x1f3ff
    .end array-data

    :array_1da
    .array-data 4
        0x1f485
        0x1f3fb
    .end array-data

    :array_1db
    .array-data 4
        0x1f485
        0x1f3fc
    .end array-data

    :array_1dc
    .array-data 4
        0x1f485
        0x1f3fd
    .end array-data

    :array_1dd
    .array-data 4
        0x1f485
        0x1f3fe
    .end array-data

    :array_1de
    .array-data 4
        0x1f485
        0x1f3ff
    .end array-data

    :array_1df
    .array-data 4
        0x1f486
        0x1f3fb
    .end array-data

    :array_1e0
    .array-data 4
        0x1f486
        0x1f3fc
    .end array-data

    :array_1e1
    .array-data 4
        0x1f486
        0x1f3fd
    .end array-data

    :array_1e2
    .array-data 4
        0x1f486
        0x1f3fe
    .end array-data

    :array_1e3
    .array-data 4
        0x1f486
        0x1f3ff
    .end array-data

    :array_1e4
    .array-data 4
        0x1f487
        0x1f3fb
    .end array-data

    :array_1e5
    .array-data 4
        0x1f487
        0x1f3fc
    .end array-data

    :array_1e6
    .array-data 4
        0x1f487
        0x1f3fd
    .end array-data

    :array_1e7
    .array-data 4
        0x1f487
        0x1f3fe
    .end array-data

    :array_1e8
    .array-data 4
        0x1f487
        0x1f3ff
    .end array-data

    :array_1e9
    .array-data 4
        0x1f4aa
        0x1f3fb
    .end array-data

    :array_1ea
    .array-data 4
        0x1f4aa
        0x1f3fc
    .end array-data

    :array_1eb
    .array-data 4
        0x1f4aa
        0x1f3fd
    .end array-data

    :array_1ec
    .array-data 4
        0x1f4aa
        0x1f3fe
    .end array-data

    :array_1ed
    .array-data 4
        0x1f4aa
        0x1f3ff
    .end array-data

    :array_1ee
    .array-data 4
        0x1f575
        0x1f3fb
    .end array-data

    :array_1ef
    .array-data 4
        0x1f575
        0x1f3fc
    .end array-data

    :array_1f0
    .array-data 4
        0x1f575
        0x1f3fd
    .end array-data

    :array_1f1
    .array-data 4
        0x1f575
        0x1f3fe
    .end array-data

    :array_1f2
    .array-data 4
        0x1f575
        0x1f3ff
    .end array-data

    :array_1f3
    .array-data 4
        0x1f57a
        0x1f3fb
    .end array-data

    :array_1f4
    .array-data 4
        0x1f57a
        0x1f3fc
    .end array-data

    :array_1f5
    .array-data 4
        0x1f57a
        0x1f3fd
    .end array-data

    :array_1f6
    .array-data 4
        0x1f57a
        0x1f3fe
    .end array-data

    :array_1f7
    .array-data 4
        0x1f57a
        0x1f3ff
    .end array-data

    :array_1f8
    .array-data 4
        0x1f590
        0x1f3fb
    .end array-data

    :array_1f9
    .array-data 4
        0x1f590
        0x1f3fc
    .end array-data

    :array_1fa
    .array-data 4
        0x1f590
        0x1f3fd
    .end array-data

    :array_1fb
    .array-data 4
        0x1f590
        0x1f3fe
    .end array-data

    :array_1fc
    .array-data 4
        0x1f590
        0x1f3ff
    .end array-data

    :array_1fd
    .array-data 4
        0x1f595
        0x1f3fb
    .end array-data

    :array_1fe
    .array-data 4
        0x1f595
        0x1f3fc
    .end array-data

    :array_1ff
    .array-data 4
        0x1f595
        0x1f3fd
    .end array-data

    :array_200
    .array-data 4
        0x1f595
        0x1f3fe
    .end array-data

    :array_201
    .array-data 4
        0x1f595
        0x1f3ff
    .end array-data

    :array_202
    .array-data 4
        0x1f596
        0x1f3fb
    .end array-data

    :array_203
    .array-data 4
        0x1f596
        0x1f3fc
    .end array-data

    :array_204
    .array-data 4
        0x1f596
        0x1f3fd
    .end array-data

    :array_205
    .array-data 4
        0x1f596
        0x1f3fe
    .end array-data

    :array_206
    .array-data 4
        0x1f596
        0x1f3ff
    .end array-data

    :array_207
    .array-data 4
        0x1f645
        0x1f3fb
    .end array-data

    :array_208
    .array-data 4
        0x1f645
        0x1f3fc
    .end array-data

    :array_209
    .array-data 4
        0x1f645
        0x1f3fd
    .end array-data

    :array_20a
    .array-data 4
        0x1f645
        0x1f3fe
    .end array-data

    :array_20b
    .array-data 4
        0x1f645
        0x1f3ff
    .end array-data

    :array_20c
    .array-data 4
        0x1f646
        0x1f3fb
    .end array-data

    :array_20d
    .array-data 4
        0x1f646
        0x1f3fc
    .end array-data

    :array_20e
    .array-data 4
        0x1f646
        0x1f3fd
    .end array-data

    :array_20f
    .array-data 4
        0x1f646
        0x1f3fe
    .end array-data

    :array_210
    .array-data 4
        0x1f646
        0x1f3ff
    .end array-data

    :array_211
    .array-data 4
        0x1f647
        0x1f3fb
    .end array-data

    :array_212
    .array-data 4
        0x1f647
        0x1f3fc
    .end array-data

    :array_213
    .array-data 4
        0x1f647
        0x1f3fd
    .end array-data

    :array_214
    .array-data 4
        0x1f647
        0x1f3fe
    .end array-data

    :array_215
    .array-data 4
        0x1f647
        0x1f3ff
    .end array-data

    :array_216
    .array-data 4
        0x1f64b
        0x1f3fb
    .end array-data

    :array_217
    .array-data 4
        0x1f64b
        0x1f3fc
    .end array-data

    :array_218
    .array-data 4
        0x1f64b
        0x1f3fd
    .end array-data

    :array_219
    .array-data 4
        0x1f64b
        0x1f3fe
    .end array-data

    :array_21a
    .array-data 4
        0x1f64b
        0x1f3ff
    .end array-data

    :array_21b
    .array-data 4
        0x1f64c
        0x1f3fb
    .end array-data

    :array_21c
    .array-data 4
        0x1f64c
        0x1f3fc
    .end array-data

    :array_21d
    .array-data 4
        0x1f64c
        0x1f3fd
    .end array-data

    :array_21e
    .array-data 4
        0x1f64c
        0x1f3fe
    .end array-data

    :array_21f
    .array-data 4
        0x1f64c
        0x1f3ff
    .end array-data

    :array_220
    .array-data 4
        0x1f64d
        0x1f3fb
    .end array-data

    :array_221
    .array-data 4
        0x1f64d
        0x1f3fc
    .end array-data

    :array_222
    .array-data 4
        0x1f64d
        0x1f3fd
    .end array-data

    :array_223
    .array-data 4
        0x1f64d
        0x1f3fe
    .end array-data

    :array_224
    .array-data 4
        0x1f64d
        0x1f3ff
    .end array-data

    :array_225
    .array-data 4
        0x1f64e
        0x1f3fb
    .end array-data

    :array_226
    .array-data 4
        0x1f64e
        0x1f3fc
    .end array-data

    :array_227
    .array-data 4
        0x1f64e
        0x1f3fd
    .end array-data

    :array_228
    .array-data 4
        0x1f64e
        0x1f3fe
    .end array-data

    :array_229
    .array-data 4
        0x1f64e
        0x1f3ff
    .end array-data

    :array_22a
    .array-data 4
        0x1f64f
        0x1f3fb
    .end array-data

    :array_22b
    .array-data 4
        0x1f64f
        0x1f3fc
    .end array-data

    :array_22c
    .array-data 4
        0x1f64f
        0x1f3fd
    .end array-data

    :array_22d
    .array-data 4
        0x1f64f
        0x1f3fe
    .end array-data

    :array_22e
    .array-data 4
        0x1f64f
        0x1f3ff
    .end array-data

    :array_22f
    .array-data 4
        0x1f6a3
        0x1f3fb
    .end array-data

    :array_230
    .array-data 4
        0x1f6a3
        0x1f3fc
    .end array-data

    :array_231
    .array-data 4
        0x1f6a3
        0x1f3fd
    .end array-data

    :array_232
    .array-data 4
        0x1f6a3
        0x1f3fe
    .end array-data

    :array_233
    .array-data 4
        0x1f6a3
        0x1f3ff
    .end array-data

    :array_234
    .array-data 4
        0x1f6b4
        0x1f3fb
    .end array-data

    :array_235
    .array-data 4
        0x1f6b4
        0x1f3fc
    .end array-data

    :array_236
    .array-data 4
        0x1f6b4
        0x1f3fd
    .end array-data

    :array_237
    .array-data 4
        0x1f6b4
        0x1f3fe
    .end array-data

    :array_238
    .array-data 4
        0x1f6b4
        0x1f3ff
    .end array-data

    :array_239
    .array-data 4
        0x1f6b5
        0x1f3fb
    .end array-data

    :array_23a
    .array-data 4
        0x1f6b5
        0x1f3fc
    .end array-data

    :array_23b
    .array-data 4
        0x1f6b5
        0x1f3fd
    .end array-data

    :array_23c
    .array-data 4
        0x1f6b5
        0x1f3fe
    .end array-data

    :array_23d
    .array-data 4
        0x1f6b5
        0x1f3ff
    .end array-data

    :array_23e
    .array-data 4
        0x1f6b6
        0x1f3fb
    .end array-data

    :array_23f
    .array-data 4
        0x1f6b6
        0x1f3fc
    .end array-data

    :array_240
    .array-data 4
        0x1f6b6
        0x1f3fd
    .end array-data

    :array_241
    .array-data 4
        0x1f6b6
        0x1f3fe
    .end array-data

    :array_242
    .array-data 4
        0x1f6b6
        0x1f3ff
    .end array-data

    :array_243
    .array-data 4
        0x1f6c0
        0x1f3fb
    .end array-data

    :array_244
    .array-data 4
        0x1f6c0
        0x1f3fc
    .end array-data

    :array_245
    .array-data 4
        0x1f6c0
        0x1f3fd
    .end array-data

    :array_246
    .array-data 4
        0x1f6c0
        0x1f3fe
    .end array-data

    :array_247
    .array-data 4
        0x1f6c0
        0x1f3ff
    .end array-data

    :array_248
    .array-data 4
        0x1f918
        0x1f3fb
    .end array-data

    :array_249
    .array-data 4
        0x1f918
        0x1f3fc
    .end array-data

    :array_24a
    .array-data 4
        0x1f918
        0x1f3fd
    .end array-data

    :array_24b
    .array-data 4
        0x1f918
        0x1f3fe
    .end array-data

    :array_24c
    .array-data 4
        0x1f918
        0x1f3ff
    .end array-data

    :array_24d
    .array-data 4
        0x1f919
        0x1f3fb
    .end array-data

    :array_24e
    .array-data 4
        0x1f919
        0x1f3fc
    .end array-data

    :array_24f
    .array-data 4
        0x1f919
        0x1f3fd
    .end array-data

    :array_250
    .array-data 4
        0x1f919
        0x1f3fe
    .end array-data

    :array_251
    .array-data 4
        0x1f919
        0x1f3ff
    .end array-data

    :array_252
    .array-data 4
        0x1f91a
        0x1f3fb
    .end array-data

    :array_253
    .array-data 4
        0x1f91a
        0x1f3fc
    .end array-data

    :array_254
    .array-data 4
        0x1f91a
        0x1f3fd
    .end array-data

    :array_255
    .array-data 4
        0x1f91a
        0x1f3fe
    .end array-data

    :array_256
    .array-data 4
        0x1f91a
        0x1f3ff
    .end array-data

    :array_257
    .array-data 4
        0x1f91b
        0x1f3fb
    .end array-data

    :array_258
    .array-data 4
        0x1f91b
        0x1f3fc
    .end array-data

    :array_259
    .array-data 4
        0x1f91b
        0x1f3fd
    .end array-data

    :array_25a
    .array-data 4
        0x1f91b
        0x1f3fe
    .end array-data

    :array_25b
    .array-data 4
        0x1f91b
        0x1f3ff
    .end array-data

    :array_25c
    .array-data 4
        0x1f91c
        0x1f3fb
    .end array-data

    :array_25d
    .array-data 4
        0x1f91c
        0x1f3fc
    .end array-data

    :array_25e
    .array-data 4
        0x1f91c
        0x1f3fd
    .end array-data

    :array_25f
    .array-data 4
        0x1f91c
        0x1f3fe
    .end array-data

    :array_260
    .array-data 4
        0x1f91c
        0x1f3ff
    .end array-data

    :array_261
    .array-data 4
        0x1f91d
        0x1f3fb
    .end array-data

    :array_262
    .array-data 4
        0x1f91d
        0x1f3fc
    .end array-data

    :array_263
    .array-data 4
        0x1f91d
        0x1f3fd
    .end array-data

    :array_264
    .array-data 4
        0x1f91d
        0x1f3fe
    .end array-data

    :array_265
    .array-data 4
        0x1f91d
        0x1f3ff
    .end array-data

    :array_266
    .array-data 4
        0x1f91e
        0x1f3fb
    .end array-data

    :array_267
    .array-data 4
        0x1f91e
        0x1f3fc
    .end array-data

    :array_268
    .array-data 4
        0x1f91e
        0x1f3fd
    .end array-data

    :array_269
    .array-data 4
        0x1f91e
        0x1f3fe
    .end array-data

    :array_26a
    .array-data 4
        0x1f91e
        0x1f3ff
    .end array-data

    :array_26b
    .array-data 4
        0x1f926
        0x1f3fb
    .end array-data

    :array_26c
    .array-data 4
        0x1f926
        0x1f3fc
    .end array-data

    :array_26d
    .array-data 4
        0x1f926
        0x1f3fd
    .end array-data

    :array_26e
    .array-data 4
        0x1f926
        0x1f3fe
    .end array-data

    :array_26f
    .array-data 4
        0x1f926
        0x1f3ff
    .end array-data

    :array_270
    .array-data 4
        0x1f930
        0x1f3fb
    .end array-data

    :array_271
    .array-data 4
        0x1f930
        0x1f3fc
    .end array-data

    :array_272
    .array-data 4
        0x1f930
        0x1f3fd
    .end array-data

    :array_273
    .array-data 4
        0x1f930
        0x1f3fe
    .end array-data

    :array_274
    .array-data 4
        0x1f930
        0x1f3ff
    .end array-data

    :array_275
    .array-data 4
        0x1f933
        0x1f3fb
    .end array-data

    :array_276
    .array-data 4
        0x1f933
        0x1f3fc
    .end array-data

    :array_277
    .array-data 4
        0x1f933
        0x1f3fd
    .end array-data

    :array_278
    .array-data 4
        0x1f933
        0x1f3fe
    .end array-data

    :array_279
    .array-data 4
        0x1f933
        0x1f3ff
    .end array-data

    :array_27a
    .array-data 4
        0x1f934
        0x1f3fb
    .end array-data

    :array_27b
    .array-data 4
        0x1f934
        0x1f3fc
    .end array-data

    :array_27c
    .array-data 4
        0x1f934
        0x1f3fd
    .end array-data

    :array_27d
    .array-data 4
        0x1f934
        0x1f3fe
    .end array-data

    :array_27e
    .array-data 4
        0x1f934
        0x1f3ff
    .end array-data

    :array_27f
    .array-data 4
        0x1f935
        0x1f3fb
    .end array-data

    :array_280
    .array-data 4
        0x1f935
        0x1f3fc
    .end array-data

    :array_281
    .array-data 4
        0x1f935
        0x1f3fd
    .end array-data

    :array_282
    .array-data 4
        0x1f935
        0x1f3fe
    .end array-data

    :array_283
    .array-data 4
        0x1f935
        0x1f3ff
    .end array-data

    :array_284
    .array-data 4
        0x1f936
        0x1f3fb
    .end array-data

    :array_285
    .array-data 4
        0x1f936
        0x1f3fc
    .end array-data

    :array_286
    .array-data 4
        0x1f936
        0x1f3fd
    .end array-data

    :array_287
    .array-data 4
        0x1f936
        0x1f3fe
    .end array-data

    :array_288
    .array-data 4
        0x1f936
        0x1f3ff
    .end array-data

    :array_289
    .array-data 4
        0x1f937
        0x1f3fb
    .end array-data

    :array_28a
    .array-data 4
        0x1f937
        0x1f3fc
    .end array-data

    :array_28b
    .array-data 4
        0x1f937
        0x1f3fd
    .end array-data

    :array_28c
    .array-data 4
        0x1f937
        0x1f3fe
    .end array-data

    :array_28d
    .array-data 4
        0x1f937
        0x1f3ff
    .end array-data

    :array_28e
    .array-data 4
        0x1f938
        0x1f3fb
    .end array-data

    :array_28f
    .array-data 4
        0x1f938
        0x1f3fc
    .end array-data

    :array_290
    .array-data 4
        0x1f938
        0x1f3fd
    .end array-data

    :array_291
    .array-data 4
        0x1f938
        0x1f3fe
    .end array-data

    :array_292
    .array-data 4
        0x1f938
        0x1f3ff
    .end array-data

    :array_293
    .array-data 4
        0x1f939
        0x1f3fb
    .end array-data

    :array_294
    .array-data 4
        0x1f939
        0x1f3fc
    .end array-data

    :array_295
    .array-data 4
        0x1f939
        0x1f3fd
    .end array-data

    :array_296
    .array-data 4
        0x1f939
        0x1f3fe
    .end array-data

    :array_297
    .array-data 4
        0x1f939
        0x1f3ff
    .end array-data

    :array_298
    .array-data 4
        0x1f93c
        0x1f3fb
    .end array-data

    :array_299
    .array-data 4
        0x1f93c
        0x1f3fc
    .end array-data

    :array_29a
    .array-data 4
        0x1f93c
        0x1f3fd
    .end array-data

    :array_29b
    .array-data 4
        0x1f93c
        0x1f3fe
    .end array-data

    :array_29c
    .array-data 4
        0x1f93c
        0x1f3ff
    .end array-data

    :array_29d
    .array-data 4
        0x1f93d
        0x1f3fb
    .end array-data

    :array_29e
    .array-data 4
        0x1f93d
        0x1f3fc
    .end array-data

    :array_29f
    .array-data 4
        0x1f93d
        0x1f3fd
    .end array-data

    :array_2a0
    .array-data 4
        0x1f93d
        0x1f3fe
    .end array-data

    :array_2a1
    .array-data 4
        0x1f93d
        0x1f3ff
    .end array-data

    :array_2a2
    .array-data 4
        0x1f93e
        0x1f3fb
    .end array-data

    :array_2a3
    .array-data 4
        0x1f93e
        0x1f3fc
    .end array-data

    :array_2a4
    .array-data 4
        0x1f93e
        0x1f3fd
    .end array-data

    :array_2a5
    .array-data 4
        0x1f93e
        0x1f3fe
    .end array-data

    :array_2a6
    .array-data 4
        0x1f93e
        0x1f3ff
    .end array-data

    :array_2a7
    .array-data 4
        0x261d
        0x1f3fb
    .end array-data

    :array_2a8
    .array-data 4
        0x261d
        0x1f3fc
    .end array-data

    :array_2a9
    .array-data 4
        0x261d
        0x1f3fd
    .end array-data

    :array_2aa
    .array-data 4
        0x261d
        0x1f3fe
    .end array-data

    :array_2ab
    .array-data 4
        0x261d
        0x1f3ff
    .end array-data

    :array_2ac
    .array-data 4
        0x26f9
        0x1f3fb
    .end array-data

    :array_2ad
    .array-data 4
        0x26f9
        0x1f3fc
    .end array-data

    :array_2ae
    .array-data 4
        0x26f9
        0x1f3fd
    .end array-data

    :array_2af
    .array-data 4
        0x26f9
        0x1f3fe
    .end array-data

    :array_2b0
    .array-data 4
        0x26f9
        0x1f3ff
    .end array-data

    :array_2b1
    .array-data 4
        0x270a
        0x1f3fb
    .end array-data

    :array_2b2
    .array-data 4
        0x270a
        0x1f3fc
    .end array-data

    :array_2b3
    .array-data 4
        0x270a
        0x1f3fd
    .end array-data

    :array_2b4
    .array-data 4
        0x270a
        0x1f3fe
    .end array-data

    :array_2b5
    .array-data 4
        0x270a
        0x1f3ff
    .end array-data

    :array_2b6
    .array-data 4
        0x270b
        0x1f3fb
    .end array-data

    :array_2b7
    .array-data 4
        0x270b
        0x1f3fc
    .end array-data

    :array_2b8
    .array-data 4
        0x270b
        0x1f3fd
    .end array-data

    :array_2b9
    .array-data 4
        0x270b
        0x1f3fe
    .end array-data

    :array_2ba
    .array-data 4
        0x270b
        0x1f3ff
    .end array-data

    :array_2bb
    .array-data 4
        0x270c
        0x1f3fb
    .end array-data

    :array_2bc
    .array-data 4
        0x270c
        0x1f3fc
    .end array-data

    :array_2bd
    .array-data 4
        0x270c
        0x1f3fd
    .end array-data

    :array_2be
    .array-data 4
        0x270c
        0x1f3fe
    .end array-data

    :array_2bf
    .array-data 4
        0x270c
        0x1f3ff
    .end array-data

    :array_2c0
    .array-data 4
        0x270d
        0x1f3fb
    .end array-data

    :array_2c1
    .array-data 4
        0x270d
        0x1f3fc
    .end array-data

    :array_2c2
    .array-data 4
        0x270d
        0x1f3fd
    .end array-data

    :array_2c3
    .array-data 4
        0x270d
        0x1f3fe
    .end array-data

    :array_2c4
    .array-data 4
        0x270d
        0x1f3ff
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAssetsPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 27
    sget-object v0, Lcom/narvii/util/emojione/EmojionePng;->_unicodeToFilename:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emojione/png_128/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 37
    :cond_0
    sget-object v0, Lcom/narvii/util/emojione/EmojionePng;->cache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_0
    if-eqz v0, :cond_2

    return-object v0

    .line 42
    :cond_2
    invoke-static {p1}, Lcom/narvii/util/emojione/EmojionePng;->getAssetsPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    return-object v1

    .line 47
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 48
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 51
    invoke-static {p0}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    :goto_1
    if-eqz v0, :cond_4

    .line 54
    sget-object p0, Lcom/narvii/util/emojione/EmojionePng;->cache:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v0
.end method
