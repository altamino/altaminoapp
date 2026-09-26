.class Lcom/bytedance/tea/common/a/b$b;
.super Lcom/bytedance/tea/common/a/b$a;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/tea/common/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/bytedance/tea/common/a/b$a;-><init>(Lcom/bytedance/tea/common/a/b$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/tea/common/a/b$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/bytedance/tea/common/a/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/ActivityManager$MemoryInfo;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 3
    return-wide v0
.end method
