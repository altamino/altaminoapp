.class public Lcom/narvii/util/emojione/EmojionePng;
.super Ljava/lang/Object;
.source "SourceFile"


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
    .locals 16

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/narvii/util/emojione/EmojionePng;->_unicodeToFilename:Ljava/util/HashMap;

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/narvii/util/emojione/EmojionePng;->unicodeToFilename:Ljava/util/Map;

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/narvii/util/emojione/EmojionePng;->cache:Ljava/util/HashMap;

    .line 4
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x23

    const/16 v3, 0x20e3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "0023-20e3.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x23

    filled-new-array {v2}, [I

    move-result-object v2

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "0023.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2a

    const/16 v6, 0x20e3

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "002a-20e3.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "002a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x30

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "0030-20e3.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x30

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "0030.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x31

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "0031-20e3.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x31

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "0031.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x32

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "0032-20e3.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x32

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "0032.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x33

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "0033-20e3.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x33

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "0033.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x34

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "0034-20e3.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x34

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "0034.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x35

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "0035-20e3.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x35

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "0035.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x36

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "0036-20e3.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x36

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "0036.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x37

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "0037-20e3.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x37

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "0037.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x38

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "0038-20e3.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x38

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "0038.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x39

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "0039-20e3.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x39

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "0039.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0xa9

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "00a9.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0xae

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "00ae.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f004

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f004.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f0cf

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f0cf.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f170

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f170.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f171

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f171.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f17e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f17e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f17f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f17f.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f18e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f18e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f191

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f191.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f192

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f192.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f193

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f193.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f194

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f194.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f195

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f195.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f196

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f196.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f197

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f197.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f198

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f198.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f199

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f199.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f19a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f19a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f1e6

    const v6, 0x1f1e8

    filled-new-array {v2, v6}, [I

    move-result-object v7

    invoke-direct {v1, v7, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v7, "1f1e6-1f1e8.png"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    new-instance v1, Ljava/lang/String;

    const v7, 0x1f1e9

    filled-new-array {v2, v7}, [I

    move-result-object v7

    invoke-direct {v1, v7, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v7, "1f1e6-1f1e9.png"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v1, Ljava/lang/String;

    const v7, 0x1f1ea

    filled-new-array {v2, v7}, [I

    move-result-object v8

    invoke-direct {v1, v8, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v8, "1f1e6-1f1ea.png"

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance v1, Ljava/lang/String;

    const v8, 0x1f1eb

    filled-new-array {v2, v8}, [I

    move-result-object v8

    invoke-direct {v1, v8, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v8, "1f1e6-1f1eb.png"

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v1, Ljava/lang/String;

    const v8, 0x1f1ec

    filled-new-array {v2, v8}, [I

    move-result-object v9

    invoke-direct {v1, v9, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v9, "1f1e6-1f1ec.png"

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v1, Ljava/lang/String;

    const v9, 0x1f1ee

    filled-new-array {v2, v9}, [I

    move-result-object v10

    invoke-direct {v1, v10, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v10, "1f1e6-1f1ee.png"

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v1, Ljava/lang/String;

    const v10, 0x1f1f1

    filled-new-array {v2, v10}, [I

    move-result-object v11

    invoke-direct {v1, v11, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v11, "1f1e6-1f1f1.png"

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v1, Ljava/lang/String;

    const v11, 0x1f1f2

    filled-new-array {v2, v11}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "1f1e6-1f1f2.png"

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f1f4

    filled-new-array {v2, v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "1f1e6-1f1f4.png"

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f1f6

    filled-new-array {v2, v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "1f1e6-1f1f6.png"

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f1f7

    filled-new-array {v2, v12}, [I

    move-result-object v12

    invoke-direct {v1, v12, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v12, "1f1e6-1f1f7.png"

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v1, Ljava/lang/String;

    const v12, 0x1f1f8

    filled-new-array {v2, v12}, [I

    move-result-object v13

    invoke-direct {v1, v13, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v13, "1f1e6-1f1f8.png"

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v1, Ljava/lang/String;

    const v13, 0x1f1f9

    filled-new-array {v2, v13}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1e6-1f1f9.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fa

    filled-new-array {v2, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1e6-1f1fa.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fc

    filled-new-array {v2, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1e6-1f1fc.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fd

    filled-new-array {v2, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1e6-1f1fd.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ff

    filled-new-array {v2, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1e6-1f1ff.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v1, Ljava/lang/String;

    filled-new-array {v2}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1e6.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1e7

    filled-new-array {v14, v2}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v15, "1f1e7-1f1e6.png"

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v1, Ljava/lang/String;

    filled-new-array {v14, v14}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v15, "1f1e7-1f1e7.png"

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v1, Ljava/lang/String;

    const v15, 0x1f1e9

    filled-new-array {v14, v15}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v15, "1f1e7-1f1e9.png"

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v1, Ljava/lang/String;

    filled-new-array {v14, v7}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v15, "1f1e7-1f1ea.png"

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v1, Ljava/lang/String;

    const v15, 0x1f1eb

    filled-new-array {v14, v15}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v15, "1f1e7-1f1eb.png"

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v1, Ljava/lang/String;

    filled-new-array {v14, v8}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v15, "1f1e7-1f1ec.png"

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v1, Ljava/lang/String;

    const v15, 0x1f1ed

    filled-new-array {v14, v15}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v15, "1f1e7-1f1ed.png"

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v1, Ljava/lang/String;

    filled-new-array {v14, v9}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v15, "1f1e7-1f1ee.png"

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v1, Ljava/lang/String;

    const v15, 0x1f1ef

    filled-new-array {v14, v15}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v15, "1f1e7-1f1ef.png"

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v1, Ljava/lang/String;

    filled-new-array {v14, v10}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v15, "1f1e7-1f1f1.png"

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v1, Ljava/lang/String;

    filled-new-array {v14, v11}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v15, "1f1e7-1f1f2.png"

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    new-instance v1, Ljava/lang/String;

    const v15, 0x1f1f3

    filled-new-array {v14, v15}, [I

    move-result-object v7

    invoke-direct {v1, v7, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v7, "1f1e7-1f1f3.png"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v1, Ljava/lang/String;

    const v7, 0x1f1f4

    filled-new-array {v14, v7}, [I

    move-result-object v7

    invoke-direct {v1, v7, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v7, "1f1e7-1f1f4.png"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v1, Ljava/lang/String;

    const v7, 0x1f1f6

    filled-new-array {v14, v7}, [I

    move-result-object v7

    invoke-direct {v1, v7, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v7, "1f1e7-1f1f6.png"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    new-instance v1, Ljava/lang/String;

    const v7, 0x1f1f7

    filled-new-array {v14, v7}, [I

    move-result-object v7

    invoke-direct {v1, v7, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v7, "1f1e7-1f1f7.png"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v1, Ljava/lang/String;

    filled-new-array {v14, v12}, [I

    move-result-object v7

    invoke-direct {v1, v7, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v7, "1f1e7-1f1f8.png"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v1, Ljava/lang/String;

    filled-new-array {v14, v13}, [I

    move-result-object v7

    invoke-direct {v1, v7, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v7, "1f1e7-1f1f9.png"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v1, Ljava/lang/String;

    const v7, 0x1f1fb

    filled-new-array {v14, v7}, [I

    move-result-object v7

    invoke-direct {v1, v7, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v7, "1f1e7-1f1fb.png"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v1, Ljava/lang/String;

    const v7, 0x1f1fc

    filled-new-array {v14, v7}, [I

    move-result-object v7

    invoke-direct {v1, v7, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v7, "1f1e7-1f1fc.png"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v1, Ljava/lang/String;

    const v7, 0x1f1fe

    filled-new-array {v14, v7}, [I

    move-result-object v7

    invoke-direct {v1, v7, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v7, "1f1e7-1f1fe.png"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v1, Ljava/lang/String;

    const v7, 0x1f1ff

    filled-new-array {v14, v7}, [I

    move-result-object v7

    invoke-direct {v1, v7, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v7, "1f1e7-1f1ff.png"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance v1, Ljava/lang/String;

    filled-new-array {v14}, [I

    move-result-object v7

    invoke-direct {v1, v7, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v7, "1f1e7.png"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v1, Ljava/lang/String;

    filled-new-array {v6, v2}, [I

    move-result-object v7

    invoke-direct {v1, v7, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v7, "1f1e8-1f1e6.png"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v1, Ljava/lang/String;

    filled-new-array {v6, v6}, [I

    move-result-object v7

    invoke-direct {v1, v7, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v7, "1f1e8-1f1e8.png"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v1, Ljava/lang/String;

    const v7, 0x1f1e9

    filled-new-array {v6, v7}, [I

    move-result-object v7

    invoke-direct {v1, v7, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v7, "1f1e8-1f1e9.png"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v1, Ljava/lang/String;

    const v7, 0x1f1eb

    filled-new-array {v6, v7}, [I

    move-result-object v7

    invoke-direct {v1, v7, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v7, "1f1e8-1f1eb.png"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v1, Ljava/lang/String;

    filled-new-array {v6, v8}, [I

    move-result-object v7

    invoke-direct {v1, v7, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v7, "1f1e8-1f1ec.png"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v1, Ljava/lang/String;

    const v7, 0x1f1ed

    filled-new-array {v6, v7}, [I

    move-result-object v7

    invoke-direct {v1, v7, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v7, "1f1e8-1f1ed.png"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v1, Ljava/lang/String;

    filled-new-array {v6, v9}, [I

    move-result-object v7

    invoke-direct {v1, v7, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v7, "1f1e8-1f1ee.png"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v1, Ljava/lang/String;

    const v7, 0x1f1f0

    filled-new-array {v6, v7}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1e8-1f1f0.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v1, Ljava/lang/String;

    filled-new-array {v6, v10}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1e8-1f1f1.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v1, Ljava/lang/String;

    filled-new-array {v6, v11}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1e8-1f1f2.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v1, Ljava/lang/String;

    filled-new-array {v6, v15}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1e8-1f1f3.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f4

    filled-new-array {v6, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1e8-1f1f4.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f5

    filled-new-array {v6, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1e8-1f1f5.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f7

    filled-new-array {v6, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1e8-1f1f7.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fa

    filled-new-array {v6, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1e8-1f1fa.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fb

    filled-new-array {v6, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1e8-1f1fb.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fc

    filled-new-array {v6, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1e8-1f1fc.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fd

    filled-new-array {v6, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1e8-1f1fd.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fe

    filled-new-array {v6, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1e8-1f1fe.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ff

    filled-new-array {v6, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1e8-1f1ff.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v1, Ljava/lang/String;

    filled-new-array {v6}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1e8.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1e9

    const v15, 0x1f1ea

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1e9-1f1ea.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1e9

    filled-new-array {v14, v8}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1e9-1f1ec.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1e9

    const v15, 0x1f1ef

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1e9-1f1ef.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1e9

    filled-new-array {v14, v7}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1e9-1f1f0.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1e9

    filled-new-array {v14, v11}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1e9-1f1f2.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1e9

    const v15, 0x1f1f4

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1e9-1f1f4.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1e9

    const v15, 0x1f1ff

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1e9-1f1ff.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1e9

    filled-new-array {v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1e9.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ea

    filled-new-array {v14, v2}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v15, "1f1ea-1f1e6.png"

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance v1, Ljava/lang/String;

    filled-new-array {v14, v6}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v15, "1f1ea-1f1e8.png"

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v1, Ljava/lang/String;

    filled-new-array {v14, v14}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v15, "1f1ea-1f1ea.png"

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v1, Ljava/lang/String;

    filled-new-array {v14, v8}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v15, "1f1ea-1f1ec.png"

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v1, Ljava/lang/String;

    const v15, 0x1f1ed

    filled-new-array {v14, v15}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v15, "1f1ea-1f1ed.png"

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v1, Ljava/lang/String;

    const v15, 0x1f1f7

    filled-new-array {v14, v15}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v15, "1f1ea-1f1f7.png"

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    new-instance v1, Ljava/lang/String;

    filled-new-array {v14, v12}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v15, "1f1ea-1f1f8.png"

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    new-instance v1, Ljava/lang/String;

    filled-new-array {v14, v13}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v15, "1f1ea-1f1f9.png"

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v1, Ljava/lang/String;

    const v15, 0x1f1fa

    filled-new-array {v14, v15}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v15, "1f1ea-1f1fa.png"

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    new-instance v1, Ljava/lang/String;

    filled-new-array {v14}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ea.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1eb

    filled-new-array {v14, v9}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1eb-1f1ee.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1eb

    const v15, 0x1f1ef

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1eb-1f1ef.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1eb

    filled-new-array {v14, v7}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1eb-1f1f0.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1eb

    filled-new-array {v14, v11}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1eb-1f1f2.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1eb

    const v15, 0x1f1f4

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1eb-1f1f4.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1eb

    const v15, 0x1f1f7

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1eb-1f1f7.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1eb

    filled-new-array {v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1eb.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    new-instance v1, Ljava/lang/String;

    filled-new-array {v8, v2}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ec-1f1e6.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1e7

    filled-new-array {v8, v14}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ec-1f1e7.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1e9

    filled-new-array {v8, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ec-1f1e9.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ea

    filled-new-array {v8, v14}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ec-1f1ea.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1eb

    filled-new-array {v8, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ec-1f1eb.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    new-instance v1, Ljava/lang/String;

    filled-new-array {v8, v8}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ec-1f1ec.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ed

    filled-new-array {v8, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ec-1f1ed.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    new-instance v1, Ljava/lang/String;

    filled-new-array {v8, v9}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ec-1f1ee.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v1, Ljava/lang/String;

    filled-new-array {v8, v10}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ec-1f1f1.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v1, Ljava/lang/String;

    filled-new-array {v8, v11}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ec-1f1f2.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f3

    filled-new-array {v8, v14}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ec-1f1f3.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f5

    filled-new-array {v8, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ec-1f1f5.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f6

    filled-new-array {v8, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ec-1f1f6.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f7

    filled-new-array {v8, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ec-1f1f7.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-instance v1, Ljava/lang/String;

    filled-new-array {v8, v12}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ec-1f1f8.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-instance v1, Ljava/lang/String;

    filled-new-array {v8, v13}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ec-1f1f9.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fa

    filled-new-array {v8, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ec-1f1fa.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fc

    filled-new-array {v8, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ec-1f1fc.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fe

    filled-new-array {v8, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ec-1f1fe.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    new-instance v1, Ljava/lang/String;

    filled-new-array {v8}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ec.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ed

    filled-new-array {v14, v7}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ed-1f1f0.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ed

    filled-new-array {v14, v11}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ed-1f1f2.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ed

    const v15, 0x1f1f3

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ed-1f1f3.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ed

    const v15, 0x1f1f7

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ed-1f1f7.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ed

    filled-new-array {v14, v13}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ed-1f1f9.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ed

    const v15, 0x1f1fa

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ed-1f1fa.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ed

    filled-new-array {v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ed.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    new-instance v1, Ljava/lang/String;

    filled-new-array {v9, v6}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ee-1f1e8.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1e9

    filled-new-array {v9, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ee-1f1e9.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ea

    filled-new-array {v9, v14}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ee-1f1ea.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    new-instance v1, Ljava/lang/String;

    filled-new-array {v9, v10}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ee-1f1f1.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    new-instance v1, Ljava/lang/String;

    filled-new-array {v9, v11}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ee-1f1f2.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f3

    filled-new-array {v9, v14}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ee-1f1f3.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f4

    filled-new-array {v9, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ee-1f1f4.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f6

    filled-new-array {v9, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ee-1f1f6.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f7

    filled-new-array {v9, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ee-1f1f7.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    new-instance v1, Ljava/lang/String;

    filled-new-array {v9, v12}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ee-1f1f8.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    new-instance v1, Ljava/lang/String;

    filled-new-array {v9, v13}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ee-1f1f9.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    new-instance v1, Ljava/lang/String;

    filled-new-array {v9}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ee.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ef

    const v15, 0x1f1ea

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ef-1f1ea.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ef

    filled-new-array {v14, v11}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ef-1f1f2.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ef

    const v15, 0x1f1f4

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ef-1f1f4.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ef

    const v15, 0x1f1f5

    filled-new-array {v14, v15}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ef-1f1f5.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ef

    filled-new-array {v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1ef.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ea

    filled-new-array {v7, v14}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f0-1f1ea.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    new-instance v1, Ljava/lang/String;

    filled-new-array {v7, v8}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f0-1f1ec.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ed

    filled-new-array {v7, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f0-1f1ed.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    new-instance v1, Ljava/lang/String;

    filled-new-array {v7, v9}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f0-1f1ee.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    new-instance v1, Ljava/lang/String;

    filled-new-array {v7, v11}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f0-1f1f2.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f3

    filled-new-array {v7, v14}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f0-1f1f3.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f5

    filled-new-array {v7, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f0-1f1f5.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f7

    filled-new-array {v7, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f0-1f1f7.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fc

    filled-new-array {v7, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f0-1f1fc.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fe

    filled-new-array {v7, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f0-1f1fe.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ff

    filled-new-array {v7, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f0-1f1ff.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    new-instance v1, Ljava/lang/String;

    filled-new-array {v7}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f0.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    new-instance v1, Ljava/lang/String;

    filled-new-array {v10, v2}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f1-1f1e6.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1e7

    filled-new-array {v10, v14}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f1-1f1e7.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    new-instance v1, Ljava/lang/String;

    filled-new-array {v10, v6}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f1-1f1e8.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    new-instance v1, Ljava/lang/String;

    filled-new-array {v10, v9}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f1-1f1ee.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    new-instance v1, Ljava/lang/String;

    filled-new-array {v10, v7}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f1-1f1f0.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f7

    filled-new-array {v10, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f1-1f1f7.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    new-instance v1, Ljava/lang/String;

    filled-new-array {v10, v12}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f1-1f1f8.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    new-instance v1, Ljava/lang/String;

    filled-new-array {v10, v13}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f1-1f1f9.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fa

    filled-new-array {v10, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f1-1f1fa.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fb

    filled-new-array {v10, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f1-1f1fb.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fe

    filled-new-array {v10, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f1-1f1fe.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    new-instance v1, Ljava/lang/String;

    filled-new-array {v10}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f1.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    new-instance v1, Ljava/lang/String;

    filled-new-array {v11, v2}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f2-1f1e6.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    new-instance v1, Ljava/lang/String;

    filled-new-array {v11, v6}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f2-1f1e8.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1e9

    filled-new-array {v11, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f2-1f1e9.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ea

    filled-new-array {v11, v14}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f2-1f1ea.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1eb

    filled-new-array {v11, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f2-1f1eb.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    new-instance v1, Ljava/lang/String;

    filled-new-array {v11, v8}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f2-1f1ec.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ed

    filled-new-array {v11, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f2-1f1ed.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    new-instance v1, Ljava/lang/String;

    filled-new-array {v11, v7}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f2-1f1f0.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    new-instance v1, Ljava/lang/String;

    filled-new-array {v11, v10}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f2-1f1f1.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    new-instance v1, Ljava/lang/String;

    filled-new-array {v11, v11}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f2-1f1f2.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f3

    filled-new-array {v11, v14}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f2-1f1f3.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f4

    filled-new-array {v11, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f2-1f1f4.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f5

    filled-new-array {v11, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f2-1f1f5.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f6

    filled-new-array {v11, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f2-1f1f6.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f7

    filled-new-array {v11, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f2-1f1f7.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    new-instance v1, Ljava/lang/String;

    filled-new-array {v11, v12}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f2-1f1f8.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    new-instance v1, Ljava/lang/String;

    filled-new-array {v11, v13}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f2-1f1f9.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fa

    filled-new-array {v11, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f2-1f1fa.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fb

    filled-new-array {v11, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f2-1f1fb.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fc

    filled-new-array {v11, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f2-1f1fc.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fd

    filled-new-array {v11, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f2-1f1fd.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1fe

    filled-new-array {v11, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f2-1f1fe.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1ff

    filled-new-array {v11, v14}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f2-1f1ff.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    new-instance v1, Ljava/lang/String;

    filled-new-array {v11}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v14, "1f1f2.png"

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    new-instance v1, Ljava/lang/String;

    const v14, 0x1f1f3

    filled-new-array {v14, v2}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v15, "1f1f3-1f1e6.png"

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    new-instance v1, Ljava/lang/String;

    filled-new-array {v14, v6}, [I

    move-result-object v15

    invoke-direct {v1, v15, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v15, "1f1f3-1f1e8.png"

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    new-instance v1, Ljava/lang/String;

    const v15, 0x1f1ea

    filled-new-array {v14, v15}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f3-1f1ea.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1eb

    filled-new-array {v14, v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f3-1f1eb.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    new-instance v1, Ljava/lang/String;

    filled-new-array {v14, v8}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f3-1f1ec.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    new-instance v1, Ljava/lang/String;

    filled-new-array {v14, v9}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f3-1f1ee.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    new-instance v1, Ljava/lang/String;

    filled-new-array {v14, v10}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f3-1f1f1.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1f4

    filled-new-array {v14, v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f3-1f1f4.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1f5

    filled-new-array {v14, v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f3-1f1f5.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1f7

    filled-new-array {v14, v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f3-1f1f7.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1fa

    filled-new-array {v14, v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f3-1f1fa.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1ff

    filled-new-array {v14, v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f3-1f1ff.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    new-instance v1, Ljava/lang/String;

    filled-new-array {v14}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f3.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1f4

    filled-new-array {v6, v11}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f4-1f1f2.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1f4

    filled-new-array {v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f4.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1f5

    filled-new-array {v6, v2}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f5-1f1e6.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1f5

    const v14, 0x1f1ea

    filled-new-array {v6, v14}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f5-1f1ea.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1f5

    const v14, 0x1f1eb

    filled-new-array {v6, v14}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f5-1f1eb.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1f5

    filled-new-array {v6, v8}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f5-1f1ec.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1f5

    const v14, 0x1f1ed

    filled-new-array {v6, v14}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f5-1f1ed.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1f5

    filled-new-array {v6, v7}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f5-1f1f0.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1f5

    filled-new-array {v6, v10}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f5-1f1f1.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1f5

    filled-new-array {v6, v11}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f5-1f1f2.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1f5

    const v14, 0x1f1f3

    filled-new-array {v6, v14}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f5-1f1f3.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1f5

    const v14, 0x1f1f7

    filled-new-array {v6, v14}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f5-1f1f7.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1f5

    filled-new-array {v6, v12}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f5-1f1f8.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1f5

    filled-new-array {v6, v13}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f5-1f1f9.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1f5

    const v14, 0x1f1fc

    filled-new-array {v6, v14}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f5-1f1fc.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1f5

    const v14, 0x1f1fe

    filled-new-array {v6, v14}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f5-1f1fe.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1f5

    filled-new-array {v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f5.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1f6

    filled-new-array {v6, v2}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f6-1f1e6.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1f6

    filled-new-array {v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f6.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1f7

    const v14, 0x1f1ea

    filled-new-array {v6, v14}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f7-1f1ea.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1f7

    const v14, 0x1f1f4

    filled-new-array {v6, v14}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f7-1f1f4.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1f7

    filled-new-array {v6, v12}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f7-1f1f8.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1f7

    const v14, 0x1f1fa

    filled-new-array {v6, v14}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f7-1f1fa.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1f7

    const v14, 0x1f1fc

    filled-new-array {v6, v14}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f7-1f1fc.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1f7

    filled-new-array {v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f7.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    new-instance v1, Ljava/lang/String;

    filled-new-array {v12, v2}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f8-1f1e6.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1e7

    filled-new-array {v12, v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f8-1f1e7.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1e8

    filled-new-array {v12, v6}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f8-1f1e8.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1e9

    filled-new-array {v12, v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f8-1f1e9.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1ea

    filled-new-array {v12, v6}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f8-1f1ea.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    new-instance v1, Ljava/lang/String;

    filled-new-array {v12, v8}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f8-1f1ec.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1ed

    filled-new-array {v12, v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f8-1f1ed.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    new-instance v1, Ljava/lang/String;

    filled-new-array {v12, v9}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f8-1f1ee.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1ef

    filled-new-array {v12, v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f8-1f1ef.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    new-instance v1, Ljava/lang/String;

    filled-new-array {v12, v7}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f8-1f1f0.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    new-instance v1, Ljava/lang/String;

    filled-new-array {v12, v10}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f8-1f1f1.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    new-instance v1, Ljava/lang/String;

    filled-new-array {v12, v11}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f8-1f1f2.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1f3

    filled-new-array {v12, v6}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f8-1f1f3.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1f4

    filled-new-array {v12, v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f8-1f1f4.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1f7

    filled-new-array {v12, v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f8-1f1f7.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    new-instance v1, Ljava/lang/String;

    filled-new-array {v12, v12}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f8-1f1f8.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    new-instance v1, Ljava/lang/String;

    filled-new-array {v12, v13}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f8-1f1f9.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1fb

    filled-new-array {v12, v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f8-1f1fb.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1fd

    filled-new-array {v12, v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f8-1f1fd.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1fe

    filled-new-array {v12, v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f8-1f1fe.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1ff

    filled-new-array {v12, v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f8-1f1ff.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    new-instance v1, Ljava/lang/String;

    filled-new-array {v12}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f8.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    new-instance v1, Ljava/lang/String;

    filled-new-array {v13, v2}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f9-1f1e6.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1e8

    filled-new-array {v13, v6}, [I

    move-result-object v14

    invoke-direct {v1, v14, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f9-1f1e8.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1e9

    filled-new-array {v13, v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f9-1f1e9.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1eb

    filled-new-array {v13, v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f9-1f1eb.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    new-instance v1, Ljava/lang/String;

    filled-new-array {v13, v8}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f9-1f1ec.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1ed

    filled-new-array {v13, v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f9-1f1ed.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1ef

    filled-new-array {v13, v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f9-1f1ef.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    new-instance v1, Ljava/lang/String;

    filled-new-array {v13, v7}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f9-1f1f0.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    new-instance v1, Ljava/lang/String;

    filled-new-array {v13, v10}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f9-1f1f1.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    new-instance v1, Ljava/lang/String;

    filled-new-array {v13, v11}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f9-1f1f2.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1f3

    filled-new-array {v13, v6}, [I

    move-result-object v10

    invoke-direct {v1, v10, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f9-1f1f3.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1f4

    filled-new-array {v13, v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f9-1f1f4.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1f7

    filled-new-array {v13, v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f9-1f1f7.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    new-instance v1, Ljava/lang/String;

    filled-new-array {v13, v13}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f9-1f1f9.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1fb

    filled-new-array {v13, v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f9-1f1fb.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1fc

    filled-new-array {v13, v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f9-1f1fc.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1ff

    filled-new-array {v13, v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f9-1f1ff.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    new-instance v1, Ljava/lang/String;

    filled-new-array {v13}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1f9.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1fa

    filled-new-array {v6, v2}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1fa-1f1e6.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1fa

    filled-new-array {v6, v8}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1fa-1f1ec.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1fa

    filled-new-array {v6, v11}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1fa-1f1f2.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1fa

    filled-new-array {v6, v12}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1fa-1f1f8.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1fa

    const v10, 0x1f1fe

    filled-new-array {v6, v10}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1fa-1f1fe.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1fa

    const v10, 0x1f1ff

    filled-new-array {v6, v10}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1fa-1f1ff.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1fa

    filled-new-array {v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1fa.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1fb

    filled-new-array {v6, v2}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1fb-1f1e6.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1fb

    const v10, 0x1f1e8

    filled-new-array {v6, v10}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1fb-1f1e8.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1fb

    const v10, 0x1f1ea

    filled-new-array {v6, v10}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1fb-1f1ea.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1fb

    filled-new-array {v6, v8}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1fb-1f1ec.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1fb

    filled-new-array {v6, v9}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1fb-1f1ee.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1fb

    const v8, 0x1f1f3

    filled-new-array {v6, v8}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1fb-1f1f3.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1fb

    const v8, 0x1f1fa

    filled-new-array {v6, v8}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1fb-1f1fa.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1fb

    filled-new-array {v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1fb.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1fc

    const v8, 0x1f1eb

    filled-new-array {v6, v8}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1fc-1f1eb.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1fc

    filled-new-array {v6, v12}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1fc-1f1f8.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1fc

    filled-new-array {v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1fc.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1fd

    filled-new-array {v6, v7}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1fd-1f1f0.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1fd

    filled-new-array {v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1fd.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1fe

    const v7, 0x1f1ea

    filled-new-array {v6, v7}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1fe-1f1ea.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1fe

    filled-new-array {v6, v13}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1fe-1f1f9.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1fe

    filled-new-array {v6}, [I

    move-result-object v6

    invoke-direct {v1, v6, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v6, "1f1fe.png"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    new-instance v1, Ljava/lang/String;

    const v6, 0x1f1ff

    filled-new-array {v6, v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f1ff-1f1e6.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f1ff

    filled-new-array {v2, v11}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f1ff-1f1f2.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f1ff

    const v6, 0x1f1fc

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f1ff-1f1fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f1ff

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f1ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f201

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f201.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f202

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f202.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f21a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f21a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f22f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f22f.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f232

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f232.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f233

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f233.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f234

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f234.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f235

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f235.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f236

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f236.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f237

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f237.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f238

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f238.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f239

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f239.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f23a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f23a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f250

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f250.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f251

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f251.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f300

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f300.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f301

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f301.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f302

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f302.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f303

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f303.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f304

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f304.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f305

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f305.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f306

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f306.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f307

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f307.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f308

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f308.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f309

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f309.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f30a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f30a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f30b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f30b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f30c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f30c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f30d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f30d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f30e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f30e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f30f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f30f.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f310

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f310.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f311

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f311.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f312

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f312.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f313

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f313.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f314

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f314.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f315

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f315.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f316

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f316.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f317

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f317.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f318

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f318.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f319

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f319.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f31a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f31a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f31b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f31b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f31c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f31c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f31d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f31d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f31e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f31e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f31f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f31f.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f320

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f320.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f321

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f321.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f324

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f324.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f325

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f325.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f326

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f326.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f327

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f327.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f328

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f328.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f329

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f329.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f32a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f32a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f32b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f32b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f32c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f32c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f32d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f32d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f32e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f32e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f32f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f32f.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f330

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f330.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f331

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f331.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f332

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f332.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f333

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f333.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f334

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f334.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f335

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f335.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f336

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f336.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f337

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f337.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f338

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f338.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f339

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f339.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f33a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f33a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f33b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f33b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f33c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f33c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f33d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f33d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f33e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f33e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f33f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f33f.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f340

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f340.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f341

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f341.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f342

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f342.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f343

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f343.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f344

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f344.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f345

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f345.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f346

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f346.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f347

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f347.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f348

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f348.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f349

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f349.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f34a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f34a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f34b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f34b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f34c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f34c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f34d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f34d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f34e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f34e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f34f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f34f.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f350

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f350.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f351

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f351.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f352

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f352.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f353

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f353.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f354

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f354.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f355

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f355.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f356

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f356.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f357

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f357.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f358

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f358.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f359

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f359.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f35a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f35a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f35b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f35b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f35c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f35c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f35d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f35d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f35e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f35e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f35f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f35f.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f360

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f360.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f361

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f361.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f362

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f362.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f363

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f363.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f364

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f364.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f365

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f365.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f366

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f366.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f367

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f367.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f368

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f368.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f369

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f369.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f36a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f36a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f36b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f36b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f36c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f36c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f36d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f36d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f36e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f36e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f36f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f36f.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f370

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f370.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f371

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f371.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f372

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f372.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f373

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f373.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f374

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f374.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f375

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f375.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f376

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f376.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f377

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f377.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f378

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f378.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f379

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f379.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f37a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f37a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f37b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f37b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f37c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f37c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f37d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f37d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f37e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f37e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f37f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f37f.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f380

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f380.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f381

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f381.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f382

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f382.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f383

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f383.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f384

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f384.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f385

    const v6, 0x1f3fb

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f385-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f385

    const v7, 0x1f3fc

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f385-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f385

    const v8, 0x1f3fd

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f385-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f385

    const v9, 0x1f3fe

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f385-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f385

    const v10, 0x1f3ff

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f385-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f385

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f385.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f386

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f386.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f387

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f387.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f388

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f388.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f389

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f389.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f38a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f38a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f38b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f38b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f38c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f38c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f38d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f38d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f38e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f38e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f38f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f38f.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f390

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f390.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f391

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f391.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f392

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f392.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f393

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f393.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f396

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f396.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f397

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f397.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f399

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f399.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f39a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f39a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f39b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f39b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f39e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f39e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f39f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f39f.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3a0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3a0.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3a1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3a1.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3a2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3a2.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3a3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3a3.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3a4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3a4.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3a5

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3a5.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3a6

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3a6.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3a7

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3a7.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3a8

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3a8.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3a9

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3a9.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3aa

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3aa.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3ab

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3ab.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3ac

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3ac.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3ad

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3ad.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3ae

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3ae.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3af

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3af.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3b0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3b0.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3b1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3b1.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3b2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3b2.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3b3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3b3.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3b4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3b4.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3b5

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3b5.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3b6

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3b6.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3b7

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3b7.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3b8

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3b8.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3b9

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3b9.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3ba

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3ba.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3bb

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3bb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3bc

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3bc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3bd

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3bd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3be

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3be.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3bf

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3bf.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3c0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3c0.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3c1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3c1.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3c2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3c2.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3c3

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3c3-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3c3

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3c3-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3c3

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3c3-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3c3

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3c3-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3c3

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3c3-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3c3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3c3.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3c4

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3c4-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3c4

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3c4-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3c4

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3c4-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3c4

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3c4-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3c4

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3c4-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3c4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3c4.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3c5

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3c5.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3c6

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3c6.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3c7

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3c7-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3c7

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3c7-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3c7

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3c7-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3c7

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3c7-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3c7

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3c7-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3c7

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3c7.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3c8

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3c8.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3c9

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3c9.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3ca

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3ca-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3ca

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3ca-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3ca

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3ca-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3ca

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3ca-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3ca

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3ca-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3ca

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3ca.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3cb

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3cb-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3cb

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3cb-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3cb

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3cb-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3cb

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3cb-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3cb

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3cb-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3cb

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3cb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3cc

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3cc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3cd

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3cd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3ce

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3ce.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3cf

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3cf.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3d0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3d0.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3d1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3d1.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3d2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3d2.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3d3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3d3.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3d4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3d4.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3d5

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3d5.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3d6

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3d6.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3d7

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3d7.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3d8

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3d8.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3d9

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3d9.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3da

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3da.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3db

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3db.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3dc

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3dc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3dd

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3dd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3de

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3de.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3df

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3df.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3e0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3e0.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3e1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3e1.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3e2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3e2.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3e3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3e3.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3e4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3e4.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3e5

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3e5.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3e6

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3e6.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3e7

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3e7.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3e8

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3e8.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3e9

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3e9.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3ea

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3ea.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3eb

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3eb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3ec

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3ec.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3ed

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3ed.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3ee

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3ee.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3ef

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3ef.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3f0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3f0.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3f3

    const v11, 0x1f308

    filled-new-array {v2, v11}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3f3-1f308.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3f3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3f3.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3f4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3f4.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3f5

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3f5.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3f7

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3f7.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3f8

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3f8.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3f9

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3f9.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f3fa

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3fa.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    new-instance v1, Ljava/lang/String;

    filled-new-array {v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    new-instance v1, Ljava/lang/String;

    filled-new-array {v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    new-instance v1, Ljava/lang/String;

    filled-new-array {v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    new-instance v1, Ljava/lang/String;

    filled-new-array {v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    new-instance v1, Ljava/lang/String;

    filled-new-array {v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f400

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f400.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f401

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f401.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f402

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f402.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f403

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f403.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f404

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f404.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f405

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f405.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f406

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f406.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f407

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f407.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f408

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f408.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f409

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f409.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f40a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f40a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f40b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f40b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f40c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f40c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f40d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f40d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f40e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f40e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f40f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f40f.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f410

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f410.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f411

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f411.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f412

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f412.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f413

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f413.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f414

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f414.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f415

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f415.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f416

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f416.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f417

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f417.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f418

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f418.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f419

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f419.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f41a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f41a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f41b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f41b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f41c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f41c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f41d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f41d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f41e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f41e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f41f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f41f.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f420

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f420.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f421

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f421.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f422

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f422.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f423

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f423.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f424

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f424.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f425

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f425.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f426

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f426.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f427

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f427.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f428

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f428.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f429

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f429.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f42a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f42a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f42b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f42b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f42c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f42c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f42d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f42d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f42e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f42e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f42f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f42f.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f430

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f430.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f431

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f431.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f432

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f432.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f433

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f433.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f434

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f434.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f435

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f435.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f436

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f436.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f437

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f437.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f438

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f438.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f439

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f439.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f43a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f43a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f43b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f43b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f43c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f43c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f43d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f43d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f43e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f43e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f43f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f43f.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f440

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f440.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f441

    const v11, 0x1f5e8

    filled-new-array {v2, v11}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f441-1f5e8.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f441

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f441.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f442

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f442-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f442

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f442-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f442

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f442-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f442

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f442-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f442

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f442-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f442

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f442.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f443

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f443-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f443

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f443-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f443

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f443-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f443

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f443-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f443

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f443-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f443

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f443.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f444

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f444.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f445

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f445.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f446

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f446-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f446

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f446-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f446

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f446-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f446

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f446-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f446

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f446-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f446

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f446.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f447

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f447-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f447

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f447-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f447

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f447-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f447

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f447-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f447

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f447-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f447

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f447.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f448

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f448-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f448

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f448-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f448

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f448-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f448

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f448-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f448

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f448-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f448

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f448.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f449

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f449-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f449

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f449-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f449

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f449-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f449

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f449-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f449

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f449-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f449

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f449.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44a

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f44a-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44a

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f44a-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44a

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f44a-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44a

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f44a-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44a

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f44a-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f44a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44b

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f44b-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44b

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f44b-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44b

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f44b-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44b

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f44b-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44b

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f44b-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f44b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44c

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f44c-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44c

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f44c-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44c

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f44c-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44c

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f44c-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44c

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f44c-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f44c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44d

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f44d-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44d

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f44d-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44d

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f44d-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44d

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f44d-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44d

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f44d-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f44d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44e

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f44e-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44e

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f44e-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44e

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f44e-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44e

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f44e-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44e

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f44e-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f44e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44f

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f44f-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44f

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f44f-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44f

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f44f-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44f

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f44f-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44f

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f44f-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f44f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f44f.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f450

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f450-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f450

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f450-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f450

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f450-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f450

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f450-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f450

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f450-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f450

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f450.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f451

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f451.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f452

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f452.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f453

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f453.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f454

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f454.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f455

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f455.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f456

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f456.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f457

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f457.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f458

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f458.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f459

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f459.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f45a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f45a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f45b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f45b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f45c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f45c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f45d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f45d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f45e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f45e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f45f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f45f.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f460

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f460.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f461

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f461.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f462

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f462.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f463

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f463.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f464

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f464.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f465

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f465.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f466

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f466-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f466

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f466-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f466

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f466-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f466

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f466-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f466

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f466-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f466

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f466.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f467

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f467-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f467

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f467-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f467

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f467-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f467

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f467-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f467

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f467-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f467

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f467.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f468

    filled-new-array {v2, v6}, [I

    move-result-object v11

    invoke-direct {v1, v11, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v11, "1f468-1f3fb.png"

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    new-instance v1, Ljava/lang/String;

    filled-new-array {v2, v7}, [I

    move-result-object v11

    invoke-direct {v1, v11, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v11, "1f468-1f3fc.png"

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    new-instance v1, Ljava/lang/String;

    filled-new-array {v2, v8}, [I

    move-result-object v11

    invoke-direct {v1, v11, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v11, "1f468-1f3fd.png"

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    new-instance v1, Ljava/lang/String;

    filled-new-array {v2, v9}, [I

    move-result-object v11

    invoke-direct {v1, v11, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v11, "1f468-1f3fe.png"

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    new-instance v1, Ljava/lang/String;

    filled-new-array {v2, v10}, [I

    move-result-object v11

    invoke-direct {v1, v11, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v11, "1f468-1f3ff.png"

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    new-instance v1, Ljava/lang/String;

    const v11, 0x1f466

    const v12, 0x1f466

    filled-new-array {v2, v2, v11, v12}, [I

    move-result-object v11

    const/4 v12, 0x4

    invoke-direct {v1, v11, v3, v12}, Ljava/lang/String;-><init>([III)V

    const-string v11, "1f468-1f468-1f466-1f466.png"

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    new-instance v1, Ljava/lang/String;

    const v11, 0x1f466

    filled-new-array {v2, v2, v11}, [I

    move-result-object v11

    const/4 v12, 0x3

    invoke-direct {v1, v11, v3, v12}, Ljava/lang/String;-><init>([III)V

    const-string v11, "1f468-1f468-1f466.png"

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    new-instance v1, Ljava/lang/String;

    const v11, 0x1f467

    const v12, 0x1f466

    filled-new-array {v2, v2, v11, v12}, [I

    move-result-object v11

    const/4 v12, 0x4

    invoke-direct {v1, v11, v3, v12}, Ljava/lang/String;-><init>([III)V

    const-string v11, "1f468-1f468-1f467-1f466.png"

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    new-instance v1, Ljava/lang/String;

    const v11, 0x1f467

    const v12, 0x1f467

    filled-new-array {v2, v2, v11, v12}, [I

    move-result-object v11

    const/4 v12, 0x4

    invoke-direct {v1, v11, v3, v12}, Ljava/lang/String;-><init>([III)V

    const-string v11, "1f468-1f468-1f467-1f467.png"

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    new-instance v1, Ljava/lang/String;

    const v11, 0x1f467

    filled-new-array {v2, v2, v11}, [I

    move-result-object v11

    const/4 v12, 0x3

    invoke-direct {v1, v11, v3, v12}, Ljava/lang/String;-><init>([III)V

    const-string v11, "1f468-1f468-1f467.png"

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    new-instance v1, Ljava/lang/String;

    const v11, 0x1f466

    const v12, 0x1f466

    const v13, 0x1f469

    filled-new-array {v2, v13, v11, v12}, [I

    move-result-object v11

    const/4 v12, 0x4

    invoke-direct {v1, v11, v3, v12}, Ljava/lang/String;-><init>([III)V

    const-string v11, "1f468-1f469-1f466-1f466.png"

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    new-instance v1, Ljava/lang/String;

    const v11, 0x1f467

    const v12, 0x1f466

    filled-new-array {v2, v13, v11, v12}, [I

    move-result-object v11

    const/4 v12, 0x4

    invoke-direct {v1, v11, v3, v12}, Ljava/lang/String;-><init>([III)V

    const-string v11, "1f468-1f469-1f467-1f466.png"

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    new-instance v1, Ljava/lang/String;

    const v11, 0x1f467

    const v12, 0x1f467

    filled-new-array {v2, v13, v11, v12}, [I

    move-result-object v11

    const/4 v12, 0x4

    invoke-direct {v1, v11, v3, v12}, Ljava/lang/String;-><init>([III)V

    const-string v11, "1f468-1f469-1f467-1f467.png"

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    new-instance v1, Ljava/lang/String;

    const v11, 0x1f467

    filled-new-array {v2, v13, v11}, [I

    move-result-object v11

    const/4 v12, 0x3

    invoke-direct {v1, v11, v3, v12}, Ljava/lang/String;-><init>([III)V

    const-string v11, "1f468-1f469-1f467.png"

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    new-instance v1, Ljava/lang/String;

    const/16 v11, 0x2764

    filled-new-array {v2, v11, v2}, [I

    move-result-object v11

    invoke-direct {v1, v11, v3, v12}, Ljava/lang/String;-><init>([III)V

    const-string v11, "1f468-2764-1f468.png"

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    new-instance v1, Ljava/lang/String;

    const/16 v11, 0x2764

    const v12, 0x1f48b

    filled-new-array {v2, v11, v12, v2}, [I

    move-result-object v11

    const/4 v12, 0x4

    invoke-direct {v1, v11, v3, v12}, Ljava/lang/String;-><init>([III)V

    const-string v11, "1f468-2764-1f48b-1f468.png"

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    new-instance v1, Ljava/lang/String;

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f468.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    new-instance v1, Ljava/lang/String;

    filled-new-array {v13, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f469-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    new-instance v1, Ljava/lang/String;

    filled-new-array {v13, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f469-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    new-instance v1, Ljava/lang/String;

    filled-new-array {v13, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f469-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    new-instance v1, Ljava/lang/String;

    filled-new-array {v13, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f469-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    new-instance v1, Ljava/lang/String;

    filled-new-array {v13, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f469-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f466

    const v11, 0x1f466

    filled-new-array {v13, v13, v2, v11}, [I

    move-result-object v2

    const/4 v11, 0x4

    invoke-direct {v1, v2, v3, v11}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f469-1f469-1f466-1f466.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f466

    filled-new-array {v13, v13, v2}, [I

    move-result-object v2

    const/4 v11, 0x3

    invoke-direct {v1, v2, v3, v11}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f469-1f469-1f466.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f467

    const v11, 0x1f466

    filled-new-array {v13, v13, v2, v11}, [I

    move-result-object v2

    const/4 v11, 0x4

    invoke-direct {v1, v2, v3, v11}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f469-1f469-1f467-1f466.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f467

    const v11, 0x1f467

    filled-new-array {v13, v13, v2, v11}, [I

    move-result-object v2

    const/4 v11, 0x4

    invoke-direct {v1, v2, v3, v11}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f469-1f469-1f467-1f467.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f467

    filled-new-array {v13, v13, v2}, [I

    move-result-object v2

    const/4 v11, 0x3

    invoke-direct {v1, v2, v3, v11}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f469-1f469-1f467.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2764

    filled-new-array {v13, v2, v13}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v11}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f469-2764-1f469.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2764

    const v11, 0x1f48b

    filled-new-array {v13, v2, v11, v13}, [I

    move-result-object v2

    const/4 v11, 0x4

    invoke-direct {v1, v2, v3, v11}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f469-2764-1f48b-1f469.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    new-instance v1, Ljava/lang/String;

    filled-new-array {v13}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f469.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f46a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f46a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f46b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f46b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f46c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f46c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f46d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f46d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f46e

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f46e-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f46e

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f46e-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f46e

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f46e-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f46e

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f46e-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f46e

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f46e-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f46e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f46e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f46f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f46f.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f470

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f470-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f470

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f470-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f470

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f470-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f470

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f470-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f470

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f470-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f470

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f470.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f471

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f471-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f471

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f471-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f471

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f471-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f471

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f471-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f471

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f471-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f471

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f471.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f472

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f472-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f472

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f472-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f472

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f472-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f472

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f472-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f472

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f472-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f472

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f472.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f473

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f473-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f473

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f473-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f473

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f473-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f473

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f473-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f473

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f473-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f473

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f473.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f474

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f474-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f474

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f474-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f474

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f474-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f474

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f474-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f474

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f474-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f474

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f474.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f475

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f475-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f475

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f475-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f475

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f475-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f475

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f475-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f475

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f475-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f475

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f475.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f476

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f476-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f476

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f476-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f476

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f476-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f476

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f476-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f476

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f476-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f476

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f476.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f477

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f477-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f477

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f477-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f477

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f477-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f477

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f477-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f477

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f477-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f477

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f477.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f478

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f478-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f478

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f478-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f478

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f478-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f478

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f478-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f478

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f478-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f478

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f478.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f479

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f479.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f47a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f47a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f47b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f47b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f47c

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f47c-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f47c

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f47c-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f47c

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f47c-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f47c

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f47c-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f47c

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f47c-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f47c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f47c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f47d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f47d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f47e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f47e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f47f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f47f.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f480

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f480.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f481

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f481-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f481

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f481-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f481

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f481-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f481

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f481-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f481

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f481-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f481

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f481.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f482

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f482-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f482

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f482-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f482

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f482-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f482

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f482-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f482

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f482-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f482

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f482.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f483

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f483-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f483

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f483-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f483

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f483-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f483

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f483-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f483

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f483-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f483

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f483.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f484

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f484.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f485

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f485-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f485

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f485-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f485

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f485-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f485

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f485-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f485

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f485-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f485

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f485.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f486

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f486-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f486

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f486-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f486

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f486-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f486

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f486-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f486

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f486-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f486

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f486.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f487

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f487-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f487

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f487-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f487

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f487-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f487

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f487-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f487

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f487-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f487

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f487.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f488

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f488.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f489

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f489.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f48a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f48a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f48b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f48b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f48c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f48c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f48d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f48d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f48e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f48e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f48f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f48f.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f490

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f490.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f491

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f491.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f492

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f492.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f493

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f493.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f494

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f494.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f495

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f495.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f496

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f496.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f497

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f497.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f498

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f498.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f499

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f499.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f49a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f49a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f49b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f49b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f49c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f49c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f49d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f49d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f49e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f49e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f49f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f49f.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4a0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4a0.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4a1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4a1.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4a2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4a2.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4a3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4a3.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4a4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4a4.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4a5

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4a5.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4a6

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4a6.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4a7

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4a7.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4a8

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4a8.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4a9

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4a9.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4aa

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4aa-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4aa

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4aa-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4aa

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4aa-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4aa

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4aa-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4aa

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4aa-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4aa

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4aa.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4ab

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4ab.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4ac

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4ac.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4ad

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4ad.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4ae

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4ae.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4af

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4af.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4b0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4b0.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4b1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4b1.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4b2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4b2.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4b3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4b3.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4b4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4b4.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4b5

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4b5.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4b6

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4b6.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4b7

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4b7.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4b8

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4b8.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4b9

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4b9.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4ba

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4ba.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4bb

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4bb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4bc

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4bc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4bd

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4bd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4be

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4be.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4bf

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4bf.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4c0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4c0.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4c1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4c1.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4c2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4c2.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4c3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4c3.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4c4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4c4.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4c5

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4c5.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4c6

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4c6.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4c7

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4c7.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4c8

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4c8.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4c9

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4c9.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4ca

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4ca.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4cb

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4cb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4cc

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4cc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4cd

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4cd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4ce

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4ce.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4cf

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4cf.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4d0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4d0.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4d1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4d1.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4d2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4d2.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4d3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4d3.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4d4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4d4.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4d5

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4d5.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4d6

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4d6.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4d7

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4d7.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4d8

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4d8.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4d9

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4d9.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4da

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4da.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4db

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4db.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4dc

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4dc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4dd

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4dd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4de

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4de.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4df

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4df.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4e0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4e0.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4e1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4e1.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4e2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4e2.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4e3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4e3.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4e4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4e4.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4e5

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4e5.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4e6

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4e6.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4e7

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4e7.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4e8

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4e8.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4e9

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4e9.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4ea

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4ea.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4eb

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4eb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4ec

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4ec.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4ed

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4ed.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4ee

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4ee.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4ef

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4ef.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4f0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4f0.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4f1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4f1.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4f2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4f2.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4f3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4f3.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4f4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4f4.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4f5

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4f5.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4f6

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4f6.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4f7

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4f7.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4f8

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4f8.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4f9

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4f9.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4fa

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4fa.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4fb

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4fc

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4fd

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f4ff

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f4ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f500

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f500.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f501

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f501.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f502

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f502.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f503

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f503.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f504

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f504.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f505

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f505.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f506

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f506.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f507

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f507.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f508

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f508.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f509

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f509.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f50a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f50a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f50b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f50b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f50c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f50c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f50d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f50d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f50e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f50e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f50f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f50f.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f510

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f510.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f511

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f511.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f512

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f512.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f513

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f513.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f514

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f514.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f515

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f515.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f516

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f516.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f517

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f517.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f518

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f518.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f519

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f519.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f51a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f51a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f51b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f51b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f51c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f51c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f51d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f51d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f51e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f51e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f51f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f51f.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f520

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f520.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f521

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f521.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f522

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f522.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f523

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f523.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f524

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f524.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f525

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f525.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f526

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f526.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f527

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f527.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f528

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f528.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f529

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f529.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f52a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f52a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f52b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f52b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f52c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f52c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f52d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f52d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f52e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f52e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f52f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f52f.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f530

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f530.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f531

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f531.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f532

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f532.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f533

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f533.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f534

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f534.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f535

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f535.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f536

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f536.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f537

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f537.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f538

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f538.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f539

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f539.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f53a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f53a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f53b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f53b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f53c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f53c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f53d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f53d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f549

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f549.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f54a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f54a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f54b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f54b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f54c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f54c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f54d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f54d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f54e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f54e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f550

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f550.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f551

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f551.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f552

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f552.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f553

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f553.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f554

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f554.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f555

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f555.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f556

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f556.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f557

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f557.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f558

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f558.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f559

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f559.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f55a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f55a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f55b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f55b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f55c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f55c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f55d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f55d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f55e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f55e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f55f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f55f.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f560

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f560.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f561

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f561.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f562

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f562.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f563

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f563.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f564

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f564.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f565

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f565.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f566

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f566.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f567

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f567.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f56f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f56f.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f570

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f570.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f573

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f573.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f574

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f574.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f575

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f575-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f575

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f575-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f575

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f575-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f575

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f575-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f575

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f575-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f575

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f575.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f576

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f576.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f577

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f577.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f578

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f578.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f579

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f579.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f57a

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f57a-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f57a

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f57a-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f57a

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f57a-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f57a

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f57a-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f57a

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f57a-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f57a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f57a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f587

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f587.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f58a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f58a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f58b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f58b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f58c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f58c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f58d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f58d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f590

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f590-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f590

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f590-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f590

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f590-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f590

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f590-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f590

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f590-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f590

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f590.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f595

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f595-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f595

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f595-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f595

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f595-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f595

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f595-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f595

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f595-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f595

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f595.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f596

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f596-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f596

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f596-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f596

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f596-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f596

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f596-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f596

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f596-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f596

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f596.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5a4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f5a4.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5a5

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f5a5.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5a8

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f5a8.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5b1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f5b1.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5b2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f5b2.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5bc

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f5bc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5c2    # 1.79997E-40f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f5c2.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5c3    # 1.79998E-40f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f5c3.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5c4    # 1.8E-40f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f5c4.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5d1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f5d1.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5d2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f5d2.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5d3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f5d3.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5dc

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f5dc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5dd

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f5dd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5de

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f5de.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5e1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f5e1.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5e3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f5e3.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5e8

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f5e8.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5ef

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f5ef.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5f3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f5f3.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5fa

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f5fa.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5fb

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f5fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1228
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5fc

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f5fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5fd

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f5fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5fe

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f5fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f5ff

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f5ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1232
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f600

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f600.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f601

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f601.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f602

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f602.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f603

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f603.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f604

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f604.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f605

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f605.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f606

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f606.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f607

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f607.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f608

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f608.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f609

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f609.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f60a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f60a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f60b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f60b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1244
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f60c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f60c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f60d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f60d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f60e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f60e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f60f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f60f.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f610

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f610.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f611

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f611.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f612

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f612.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f613

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f613.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f614

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f614.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f615

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f615.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f616

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f616.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f617

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f617.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1256
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f618

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f618.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f619

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f619.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f61a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f61a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f61b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f61b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f61c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f61c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f61d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f61d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f61e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f61e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f61f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f61f.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f620

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f620.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f621

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f621.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f622

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f622.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f623

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f623.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f624

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f624.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f625

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f625.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f626

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f626.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f627

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f627.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1272
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f628

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f628.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f629

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f629.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f62a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f62a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f62b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f62b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f62c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f62c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f62d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f62d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f62e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f62e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f62f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f62f.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f630

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f630.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f631

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f631.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1282
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f632

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f632.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f633

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f633.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f634

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f634.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f635

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f635.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f636

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f636.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f637

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f637.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f638

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f638.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f639

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f639.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f63a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f63a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f63b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f63b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f63c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f63c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f63d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f63d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1294
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f63e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f63e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f63f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f63f.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1296
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f640

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f640.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f641

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f641.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f642

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f642.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1299
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f643

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f643.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f644

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f644.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f645

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f645-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1302
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f645

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f645-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f645

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f645-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1304
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f645

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f645-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f645

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f645-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1306
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f645

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f645.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f646

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f646-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1308
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f646

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f646-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f646

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f646-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1310
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f646

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f646-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1311
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f646

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f646-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f646

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f646.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1313
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f647

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f647-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1314
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f647

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f647-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f647

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f647-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f647

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f647-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1317
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f647

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f647-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f647

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f647.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f648

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f648.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1320
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f649

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f649.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f64a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1322
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64b

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f64b-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64b

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f64b-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1324
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64b

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f64b-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1325
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64b

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f64b-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1326
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64b

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f64b-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f64b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1328
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64c

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f64c-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64c

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f64c-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64c

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f64c-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1331
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64c

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f64c-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1332
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64c

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f64c-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1333
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f64c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1334
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64d

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f64d-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1335
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64d

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f64d-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64d

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f64d-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1337
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64d

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f64d-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1338
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64d

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f64d-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f64d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1340
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64e

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f64e-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1341
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64e

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f64e-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64e

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f64e-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64e

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f64e-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1344
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64e

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f64e-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1345
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f64e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64f

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f64f-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64f

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f64f-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64f

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f64f-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64f

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f64f-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1350
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64f

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f64f-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1351
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f64f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f64f.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1352
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f680

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f680.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1353
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f681

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f681.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1354
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f682

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f682.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1355
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f683

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f683.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1356
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f684

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f684.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1357
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f685

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f685.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f686

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f686.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f687

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f687.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1360
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f688

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f688.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1361
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f689

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f689.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1362
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f68a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f68a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1363
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f68b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f68b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f68c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f68c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f68d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f68d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1366
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f68e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f68e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f68f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f68f.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1368
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f690

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f690.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1369
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f691

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f691.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f692

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f692.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1371
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f693

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f693.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1372
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f694

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f694.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1373
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f695

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f695.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f696

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f696.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1375
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f697

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f697.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1376
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f698

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f698.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1377
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f699

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f699.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1378
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f69a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f69a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1379
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f69b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f69b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1380
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f69c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f69c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f69d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f69d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1382
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f69e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f69e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f69f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f69f.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1384
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6a0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6a0.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1385
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6a1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6a1.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1386
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6a2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6a2.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1387
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6a3

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6a3-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1388
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6a3

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6a3-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1389
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6a3

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6a3-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6a3

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6a3-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1391
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6a3

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6a3-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1392
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6a3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6a3.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6a4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6a4.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6a5

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6a5.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1395
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6a6

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6a6.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1396
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6a7

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6a7.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1397
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6a8

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6a8.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6a9

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6a9.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6aa

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6aa.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1400
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6ab

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6ab.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1401
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6ac

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6ac.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1402
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6ad

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6ad.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1403
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6ae

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6ae.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1404
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6af

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6af.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1405
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6b0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6b0.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1406
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6b1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6b1.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1407
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6b2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6b2.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1408
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6b3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6b3.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1409
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6b4

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6b4-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1410
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6b4

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6b4-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1411
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6b4

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6b4-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1412
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6b4

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6b4-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1413
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6b4

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6b4-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1414
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6b4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6b4.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6b5

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6b5-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1416
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6b5

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6b5-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1417
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6b5

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6b5-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1418
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6b5

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6b5-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1419
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6b5

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6b5-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1420
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6b5

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6b5.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1421
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6b6

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6b6-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1422
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6b6

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6b6-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1423
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6b6

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6b6-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1424
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6b6

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6b6-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1425
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6b6

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6b6-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1426
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6b6

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6b6.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6b7

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6b7.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1428
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6b8

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6b8.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1429
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6b9

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6b9.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1430
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6ba

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6ba.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1431
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6bb

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6bb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1432
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6bc

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6bc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1433
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6bd

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6bd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1434
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6be

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6be.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1435
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6bf

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6bf.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1436
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6c0

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6c0-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1437
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6c0

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6c0-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6c0

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6c0-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1439
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6c0

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6c0-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6c0

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6c0-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6c0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6c0.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6c1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6c1.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1443
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6c2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6c2.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1444
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6c3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6c3.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1445
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6c4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6c4.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1446
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6c5

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6c5.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6cb

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6cb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1448
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6cc

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6cc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1449
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6cd

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6cd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1450
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6ce

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6ce.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1451
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6cf

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6cf.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1452
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6d0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6d0.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1453
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6d1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6d1.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6d2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6d2.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1455
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6e0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6e0.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6e1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6e1.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1457
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6e2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6e2.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1458
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6e3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6e3.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1459
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6e4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6e4.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1460
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6e5

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6e5.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1461
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6e9

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6e9.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1462
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6eb

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6eb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1463
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6ec

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6ec.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1464
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6f0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6f0.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1465
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6f3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6f3.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1466
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6f4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6f4.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1467
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6f5

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6f5.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1468
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f6f6

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f6f6.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1469
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f910

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f910.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1470
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f911

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f911.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1471
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f912

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f912.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f913

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f913.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f914

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f914.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1474
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f915

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f915.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1475
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f916

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f916.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1476
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f917

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f917.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1477
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f918

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f918-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1478
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f918

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f918-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1479
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f918

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f918-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1480
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f918

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f918-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1481
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f918

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f918-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1482
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f918

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f918.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1483
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f919

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f919-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1484
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f919

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f919-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1485
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f919

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f919-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1486
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f919

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f919-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1487
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f919

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f919-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1488
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f919

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f919.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1489
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91a

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f91a-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1490
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91a

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f91a-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1491
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91a

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f91a-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91a

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f91a-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1493
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91a

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f91a-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1494
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f91a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1495
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91b

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f91b-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1496
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91b

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f91b-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1497
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91b

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f91b-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1498
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91b

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f91b-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1499
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91b

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f91b-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1500
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f91b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1501
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91c

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f91c-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1502
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91c

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f91c-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1503
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91c

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f91c-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91c

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f91c-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1505
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91c

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f91c-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1506
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f91c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1507
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91d

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f91d-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1508
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91d

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f91d-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1509
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91d

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f91d-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1510
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91d

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f91d-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91d

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f91d-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1512
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f91d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1513
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91e

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f91e-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1514
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91e

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f91e-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1515
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91e

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f91e-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1516
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91e

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f91e-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91e

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f91e-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1518
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f91e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f91e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1519
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f920

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f920.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f921

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f921.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1521
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f922

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f922.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1522
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f923

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f923.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1523
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f924

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f924.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1524
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f925

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f925.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1525
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f926

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f926-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1526
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f926

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f926-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1527
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f926

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f926-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1528
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f926

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f926-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1529
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f926

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f926-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1530
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f926

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f926.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1531
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f927

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f927.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1532
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f930

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f930-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1533
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f930

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f930-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1534
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f930

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f930-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1535
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f930

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f930-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1536
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f930

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f930-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1537
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f930

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f930.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1538
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f933

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f933-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1539
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f933

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f933-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1540
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f933

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f933-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1541
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f933

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f933-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1542
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f933

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f933-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1543
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f933

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f933.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1544
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f934

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f934-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1545
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f934

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f934-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1546
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f934

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f934-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1547
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f934

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f934-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1548
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f934

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f934-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1549
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f934

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f934.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1550
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f935

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f935-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1551
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f935

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f935-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1552
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f935

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f935-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1553
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f935

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f935-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1554
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f935

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f935-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1555
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f935

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f935.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1556
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f936

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f936-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1557
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f936

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f936-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1558
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f936

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f936-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1559
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f936

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f936-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1560
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f936

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f936-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1561
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f936

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f936.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1562
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f937

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f937-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1563
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f937

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f937-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1564
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f937

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f937-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1565
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f937

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f937-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1566
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f937

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f937-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1567
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f937

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f937.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1568
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f938

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f938-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1569
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f938

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f938-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1570
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f938

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f938-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1571
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f938

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f938-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1572
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f938

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f938-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1573
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f938

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f938.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1574
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f939

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f939-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1575
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f939

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f939-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1576
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f939

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f939-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1577
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f939

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f939-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1578
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f939

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f939-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1579
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f939

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f939.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1580
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f93a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f93a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1581
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f93c

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f93c-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1582
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f93c

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f93c-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1583
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f93c

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f93c-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1584
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f93c

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f93c-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1585
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f93c

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f93c-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1586
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f93c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f93c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1587
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f93d

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f93d-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1588
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f93d

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f93d-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1589
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f93d

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f93d-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1590
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f93d

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f93d-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1591
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f93d

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f93d-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1592
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f93d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f93d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1593
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f93e

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f93e-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1594
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f93e

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f93e-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1595
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f93e

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f93e-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1596
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f93e

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f93e-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1597
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f93e

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f93e-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1598
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f93e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f93e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1599
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f940

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f940.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1600
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f941

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f941.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1601
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f942

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f942.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1602
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f943

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f943.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1603
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f944

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f944.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1604
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f945

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f945.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1605
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f947

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f947.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1606
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f948

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f948.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1607
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f949

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f949.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1608
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f94a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f94a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1609
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f94b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f94b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1610
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f950

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f950.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1611
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f951

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f951.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1612
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f952

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f952.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1613
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f953

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f953.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1614
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f954

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f954.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1615
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f955

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f955.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1616
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f956

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f956.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1617
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f957

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f957.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1618
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f958

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f958.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f959

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f959.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1620
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f95a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f95a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1621
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f95b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f95b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1622
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f95c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f95c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1623
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f95d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f95d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1624
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f95e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f95e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1625
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f980

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f980.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1626
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f981

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f981.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1627
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f982

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f982.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1628
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f983

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f983.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1629
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f984

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f984.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1630
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f985

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f985.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1631
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f986

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f986.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1632
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f987

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f987.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1633
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f988

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f988.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1634
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f989

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f989.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1635
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f98a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f98a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1636
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f98b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f98b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1637
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f98c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f98c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1638
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f98d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f98d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1639
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f98e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f98e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1640
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f98f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f98f.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1641
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f990

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f990.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1642
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f991

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f991.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1643
    new-instance v1, Ljava/lang/String;

    const v2, 0x1f9c0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "1f9c0.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1644
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x203c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "203c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1645
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2049

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2049.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1646
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2122

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2122.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1647
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2139

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2139.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1648
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2194

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2194.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1649
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2195

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2195.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1650
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2196

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2196.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1651
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2197

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2197.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1652
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2198

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2198.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1653
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2199

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2199.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1654
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x21a9

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "21a9.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1655
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x21aa

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "21aa.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1656
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x231a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "231a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1657
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x231b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "231b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1658
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2328

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2328.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1659
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x23cf

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "23cf.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1660
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x23e9

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "23e9.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1661
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x23ea

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "23ea.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1662
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x23eb

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "23eb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1663
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x23ec

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "23ec.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1664
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x23ed

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "23ed.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1665
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x23ee

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "23ee.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1666
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x23ef

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "23ef.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1667
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x23f0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "23f0.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1668
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x23f1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "23f1.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1669
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x23f2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "23f2.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1670
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x23f3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "23f3.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1671
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x23f8

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "23f8.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1672
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x23f9

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "23f9.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1673
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x23fa

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "23fa.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1674
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x24c2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "24c2.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1675
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x25aa

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "25aa.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1676
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x25ab

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "25ab.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1677
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x25b6

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "25b6.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1678
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x25c0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "25c0.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1679
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x25fb

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "25fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1680
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x25fc

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "25fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1681
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x25fd

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "25fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1682
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x25fe

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "25fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1683
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2600

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2600.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1684
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2601

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2601.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1685
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2602

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2602.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1686
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2603

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2603.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1687
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2604

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2604.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1688
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x260e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "260e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1689
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2611

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2611.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1690
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2614

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2614.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1691
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2615

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2615.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1692
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2618

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2618.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1693
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x261d

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "261d-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1694
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x261d

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "261d-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1695
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x261d

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "261d-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1696
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x261d

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "261d-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1697
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x261d

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "261d-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1698
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x261d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "261d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1699
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2620

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2620.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1700
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2622

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2622.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1701
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2623

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2623.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1702
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2626

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2626.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1703
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x262a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "262a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1704
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x262e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "262e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1705
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x262f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "262f.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1706
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2638

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2638.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1707
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2639

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2639.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1708
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x263a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "263a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1709
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2648

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2648.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1710
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2649

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2649.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1711
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x264a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "264a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1712
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x264b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "264b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1713
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x264c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "264c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1714
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x264d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "264d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1715
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x264e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "264e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1716
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x264f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "264f.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1717
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2650

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2650.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1718
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2651

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2651.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1719
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2652

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2652.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1720
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2653

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2653.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1721
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2660

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2660.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1722
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2663

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2663.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1723
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2665

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2665.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1724
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2666

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2666.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1725
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2668

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2668.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1726
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x267b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "267b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1727
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x267f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "267f.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1728
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2692

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2692.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1729
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2693

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2693.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1730
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2694

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2694.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1731
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2696

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2696.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1732
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2697

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2697.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1733
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2699

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2699.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1734
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x269b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "269b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1735
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x269c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "269c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1736
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26a0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "26a0.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1737
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26a1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "26a1.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1738
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26aa

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "26aa.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1739
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26ab

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "26ab.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1740
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26b0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "26b0.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1741
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26b1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "26b1.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1742
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26bd

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "26bd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1743
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26be

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "26be.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1744
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26c4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "26c4.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1745
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26c5

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "26c5.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1746
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26c8

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "26c8.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1747
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26ce

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "26ce.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1748
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26cf

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "26cf.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1749
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26d1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "26d1.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1750
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26d3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "26d3.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1751
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26d4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "26d4.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1752
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26e9

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "26e9.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1753
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26ea

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "26ea.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1754
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26f0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "26f0.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1755
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26f1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "26f1.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1756
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26f2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "26f2.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1757
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26f3

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "26f3.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1758
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26f4

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "26f4.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1759
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26f5

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "26f5.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1760
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26f7

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "26f7.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1761
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26f8

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "26f8.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1762
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26f9

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "26f9-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1763
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26f9

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "26f9-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1764
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26f9

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "26f9-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1765
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26f9

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "26f9-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1766
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26f9

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "26f9-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1767
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26f9

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "26f9.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1768
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26fa

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "26fa.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1769
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x26fd

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "26fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1770
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2702

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2702.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1771
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2705

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2705.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1772
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2708

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2708.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1773
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2709

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2709.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1774
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270a

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "270a-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1775
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270a

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "270a-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270a

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "270a-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1777
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270a

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "270a-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1778
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270a

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "270a-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1779
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270a

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "270a.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1780
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270b

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "270b-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1781
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270b

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "270b-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1782
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270b

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "270b-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1783
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270b

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "270b-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1784
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270b

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "270b-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1785
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "270b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1786
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270c

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "270c-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1787
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270c

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "270c-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1788
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270c

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "270c-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1789
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270c

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "270c-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1790
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270c

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "270c-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1791
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "270c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1792
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270d

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "270d-1f3fb.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1793
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270d

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "270d-1f3fc.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1794
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270d

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "270d-1f3fd.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1795
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270d

    filled-new-array {v2, v9}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "270d-1f3fe.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1796
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270d

    filled-new-array {v2, v10}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const-string v2, "270d-1f3ff.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1797
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "270d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1798
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x270f

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "270f.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1799
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2712

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2712.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1800
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2714

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2714.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1801
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2716

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2716.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1802
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x271d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "271d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1803
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2721

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2721.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1804
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2728

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2728.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1805
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2733

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2733.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1806
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2734

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2734.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1807
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2744

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2744.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1808
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2747

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2747.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1809
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x274c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "274c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1810
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x274e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "274e.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1811
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2753

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2753.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1812
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2754

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2754.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1813
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2755

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2755.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1814
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2757

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2757.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1815
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2763

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2763.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1816
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2764

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2764.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1817
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2795

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2795.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1818
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2796

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2796.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1819
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2797

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2797.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1820
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x27a1

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "27a1.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1821
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x27b0

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "27b0.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1822
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x27bf

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "27bf.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1823
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2934

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2934.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1824
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2935

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2935.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1825
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2b05

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2b05.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1826
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2b06

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2b06.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1827
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2b07

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2b07.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1828
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2b1b

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2b1b.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1829
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2b1c

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2b1c.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1830
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2b50

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2b50.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1831
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2b55

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "2b55.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1832
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x3030

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "3030.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1833
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x303d

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "303d.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1834
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x3297

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "3297.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1835
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x3299

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([III)V

    const-string v2, "3299.png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getAssetsPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/emojione/EmojionePng;->_unicodeToFilename:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Ljava/lang/String;

    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    .line 14
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    const-string v1, "emojione/png_128/"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public static getBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-object v1

    .line 9
    .line 10
    :cond_0
    sget-object v0, Lcom/narvii/util/emojione/EmojionePng;->cache:Ljava/util/HashMap;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    move-object v0, v1

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Landroid/graphics/Bitmap;

    .line 27
    .line 28
    :goto_0
    if-eqz v0, :cond_2

    .line 29
    return-object v0

    .line 30
    .line 31
    .line 32
    :cond_2
    invoke-static {p1}, Lcom/narvii/util/emojione/EmojionePng;->getAssetsPath(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    if-nez v2, :cond_3

    .line 36
    return-object v1

    .line 37
    .line 38
    .line 39
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 40
    move-result-object p0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 44
    move-result-object p0

    .line 45
    .line 46
    .line 47
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    goto :goto_1

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    .line 55
    .line 56
    invoke-static {p0}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    :goto_1
    if-eqz v0, :cond_4

    .line 59
    .line 60
    sget-object p0, Lcom/narvii/util/emojione/EmojionePng;->cache:Ljava/util/HashMap;

    .line 61
    .line 62
    new-instance v1, Ljava/lang/ref/SoftReference;

    .line 63
    .line 64
    .line 65
    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_4
    return-object v0
.end method
