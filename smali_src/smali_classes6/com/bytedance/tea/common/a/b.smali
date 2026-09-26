.class public Lcom/bytedance/tea/common/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/tea/common/a/b$b;,
        Lcom/bytedance/tea/common/a/b$a;
    }
.end annotation


# static fields
.field static final a:Lcom/bytedance/tea/common/a/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/bytedance/tea/common/a/b$b;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/bytedance/tea/common/a/b$b;-><init>(Lcom/bytedance/tea/common/a/b$1;)V

    .line 7
    .line 8
    sput-object v0, Lcom/bytedance/tea/common/a/b;->a:Lcom/bytedance/tea/common/a/b$a;

    .line 9
    return-void
.end method

.method public static a(Landroid/app/ActivityManager$MemoryInfo;)J
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/bytedance/tea/common/a/b;->a:Lcom/bytedance/tea/common/a/b$a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/bytedance/tea/common/a/b$a;->a(Landroid/app/ActivityManager$MemoryInfo;)J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method
