.class public Lcom/bytedance/tea/common/utility/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/tea/common/utility/e$a;
    }
.end annotation


# static fields
.field public static final a:Z

.field public static b:Lcom/bytedance/tea/common/utility/e$a;

.field private static c:Ljava/lang/String;

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    sput-boolean v0, Lcom/bytedance/tea/common/utility/e;->a:Z

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    sput-object v0, Lcom/bytedance/tea/common/utility/e;->c:Ljava/lang/String;

    .line 8
    const/4 v0, -0x1

    .line 9
    .line 10
    sput v0, Lcom/bytedance/tea/common/utility/e;->d:I

    .line 11
    .line 12
    new-instance v0, Lcom/bytedance/tea/common/utility/e$a;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Lcom/bytedance/tea/common/utility/e$a;-><init>()V

    .line 16
    .line 17
    sput-object v0, Lcom/bytedance/tea/common/utility/e;->b:Lcom/bytedance/tea/common/utility/e$a;

    .line 18
    return-void
.end method

.method public static final a(Landroid/content/Context;)I
    .locals 1

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
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    if-nez p0, :cond_1

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_1
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 18
    :goto_0
    return v0
.end method

.method public static final b(Landroid/content/Context;)I
    .locals 1

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
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    if-nez p0, :cond_1

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_1
    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 18
    :goto_0
    return v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/bytedance/tea/common/utility/e;->c:Ljava/lang/String;

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
    if-eqz p0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lcom/bytedance/tea/common/utility/e;->a(Landroid/content/Context;)I

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Lcom/bytedance/tea/common/utility/e;->b(Landroid/content/Context;)I

    .line 18
    move-result p0

    .line 19
    .line 20
    if-lez v0, :cond_0

    .line 21
    .line 22
    if-lez p0, :cond_0

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v0, "*"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    .line 44
    sput-object p0, Lcom/bytedance/tea/common/utility/e;->c:Ljava/lang/String;

    .line 45
    .line 46
    :cond_0
    sget-object p0, Lcom/bytedance/tea/common/utility/e;->c:Ljava/lang/String;

    .line 47
    return-object p0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/bytedance/tea/common/utility/e;->d:I

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 19
    move-result-object p0

    .line 20
    .line 21
    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 22
    .line 23
    sput p0, Lcom/bytedance/tea/common/utility/e;->d:I

    .line 24
    .line 25
    :cond_0
    sget p0, Lcom/bytedance/tea/common/utility/e;->d:I

    .line 26
    return p0
.end method
