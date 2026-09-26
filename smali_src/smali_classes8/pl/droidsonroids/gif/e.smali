.class final Lpl/droidsonroids/gif/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final ANDROID_NS:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field static final SUPPORTED_RESOURCE_TYPE_NAMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    const-string v0, "drawable"

    .line 3
    .line 4
    const-string v1, "mipmap"

    .line 5
    .line 6
    const-string v2, "raw"

    .line 7
    .line 8
    .line 9
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sput-object v0, Lpl/droidsonroids/gif/e;->SUPPORTED_RESOURCE_TYPE_NAMES:Ljava/util/List;

    .line 17
    return-void
.end method

.method static a(Landroid/content/res/Resources;I)F
    .locals 2
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation

        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Landroid/util/TypedValue;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 6
    const/4 v1, 0x1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 10
    .line 11
    iget p1, v0, Landroid/util/TypedValue;->density:I

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/16 p1, 0xa0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    const v0, 0xffff

    .line 20
    .line 21
    if-eq p1, v0, :cond_1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 27
    move-result-object p0

    .line 28
    .line 29
    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 30
    .line 31
    if-lez p1, :cond_2

    .line 32
    .line 33
    if-lez p0, :cond_2

    .line 34
    int-to-float p0, p0

    .line 35
    int-to-float p1, p1

    .line 36
    div-float/2addr p0, p1

    .line 37
    return p0

    .line 38
    .line 39
    :cond_2
    const/high16 p0, 0x3f800000    # 1.0f

    .line 40
    return p0
.end method
