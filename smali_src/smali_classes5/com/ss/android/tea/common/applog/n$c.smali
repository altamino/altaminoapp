.class Lcom/ss/android/tea/common/applog/n$c;
.super Lcom/ss/android/tea/common/applog/n$b;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/tea/common/applog/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/ss/android/tea/common/applog/n$b;-><init>(Lcom/ss/android/tea/common/applog/n$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/tea/common/applog/n$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ss/android/tea/common/applog/n$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Debug$MemoryInfo;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public b(Landroid/os/Debug$MemoryInfo;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public c(Landroid/os/Debug$MemoryInfo;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    .line 4
    move-result p1

    .line 5
    return p1
.end method
