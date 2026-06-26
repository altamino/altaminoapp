.class public final Lcom/narvii/nested/tab/SelectTabViewDelegate;
.super Ljava/lang/Object;
.source "UpdateTabViewDelegate.kt"

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

.field public static final MAX_TEXT_SIZE_DP:F = 17.0f

.field public static final MIN_TEXT_SIZE_DP:F = 14.0f


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/nested/tab/SelectTabViewDelegate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/nested/tab/SelectTabViewDelegate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/nested/tab/SelectTabViewDelegate;->Companion:Lcom/narvii/nested/tab/SelectTabViewDelegate$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/view/View;IF)V
    .locals 0

    return-void
.end method

.method public onSelected(Landroid/view/View;IZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 26
    sget p2, Lcom/narvii/lib/R$id;->tab_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 p2, -0x1

    .line 27
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    .line 28
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    goto :goto_1

    :cond_2
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3
    if-eqz p1, :cond_5

    if-eqz p3, :cond_4

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_4
    const p2, 0x3f333333    # 0.7f

    .line 29
    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_5
    if-eqz p1, :cond_7

    const/4 p2, 0x1

    if-eqz p3, :cond_6

    const/high16 p3, 0x41880000    # 17.0f

    goto :goto_3

    :cond_6
    const/high16 p3, 0x41600000    # 14.0f

    .line 30
    :goto_3
    invoke-virtual {p1, p2, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_7
    return-void
.end method
