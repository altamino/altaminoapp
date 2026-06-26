.class public Lcom/narvii/widget/ReversibleLinearLayout;
.super Landroid/widget/LinearLayout;
.source "ReversibleLinearLayout.java"


# static fields
.field private static final reverseList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private reverse:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/narvii/widget/ReversibleLinearLayout;->reverseList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getReverse()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/narvii/widget/ReversibleLinearLayout;->reverse:Z

    return v0
.end method

.method public setReverse(Z)V
    .locals 4

    .line 25
    iget-boolean v0, p0, Lcom/narvii/widget/ReversibleLinearLayout;->reverse:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 27
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/widget/ReversibleLinearLayout;->reverse:Z

    .line 28
    sget-object v0, Lcom/narvii/widget/ReversibleLinearLayout;->reverseList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 30
    sget-object v2, Lcom/narvii/widget/ReversibleLinearLayout;->reverseList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 33
    sget-object v0, Lcom/narvii/widget/ReversibleLinearLayout;->reverseList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 34
    sget-object v1, Lcom/narvii/widget/ReversibleLinearLayout;->reverseList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 36
    :cond_2
    sget-object v0, Lcom/narvii/widget/ReversibleLinearLayout;->reverseList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_3

    const p1, 0x800005

    .line 38
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    goto :goto_2

    :cond_3
    const p1, 0x800003

    .line 40
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    :goto_2
    return-void
.end method
