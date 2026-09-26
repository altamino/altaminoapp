.class public final Lcom/narvii/nested/tab/SelectTabViewDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/nested/tab/UpdateTabViewDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/nested/tab/SelectTabViewDelegate$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/nested/tab/SelectTabViewDelegate$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MAX_TEXT_SIZE_DP:F = 17.0f

.field public static final MIN_TEXT_SIZE_DP:F = 14.0f


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/nested/tab/SelectTabViewDelegate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/nested/tab/SelectTabViewDelegate$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/nested/tab/SelectTabViewDelegate;->Companion:Lcom/narvii/nested/tab/SelectTabViewDelegate$Companion;

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


# virtual methods
.method public onScrolled(Landroid/view/View;IF)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onSelected(Landroid/view/View;IZ)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    sget p2, Lcom/narvii/lib/R$id;->tab_title:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Landroid/widget/TextView;

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    .line 14
    :goto_0
    if-eqz p1, :cond_1

    .line 15
    const/4 p2, -0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    .line 20
    :cond_1
    if-nez p1, :cond_2

    .line 21
    goto :goto_2

    .line 22
    .line 23
    :cond_2
    if-eqz p3, :cond_3

    .line 24
    .line 25
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_3
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 29
    .line 30
    .line 31
    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 32
    .line 33
    :goto_2
    if-nez p1, :cond_4

    .line 34
    goto :goto_4

    .line 35
    .line 36
    :cond_4
    if-eqz p3, :cond_5

    .line 37
    .line 38
    const/high16 p2, 0x3f800000    # 1.0f

    .line 39
    goto :goto_3

    .line 40
    .line 41
    .line 42
    :cond_5
    const p2, 0x3f333333    # 0.7f

    .line 43
    .line 44
    .line 45
    :goto_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 46
    .line 47
    :goto_4
    if-eqz p1, :cond_7

    .line 48
    .line 49
    if-eqz p3, :cond_6

    .line 50
    .line 51
    const/high16 p2, 0x41880000    # 17.0f

    .line 52
    goto :goto_5

    .line 53
    .line 54
    :cond_6
    const/high16 p2, 0x41600000    # 14.0f

    .line 55
    :goto_5
    const/4 p3, 0x1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p3, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 59
    :cond_7
    return-void
.end method
