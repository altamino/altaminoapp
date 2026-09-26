.class Lcom/bytedance/tea/common/a/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/tea/common/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/tea/common/a/b$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/tea/common/a/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/ActivityManager$MemoryInfo;)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method
