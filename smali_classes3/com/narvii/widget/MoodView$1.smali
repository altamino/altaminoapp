.class final Lcom/narvii/widget/MoodView$1;
.super Ljava/lang/Object;
.source "MoodView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/MoodView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 51
    instance-of v0, p1, Lcom/narvii/widget/MoodView;

    if-eqz v0, :cond_0

    .line 52
    check-cast p1, Lcom/narvii/widget/MoodView;

    invoke-virtual {p1}, Lcom/narvii/widget/MoodView;->shakeTouch()V

    :cond_0
    return-void
.end method
