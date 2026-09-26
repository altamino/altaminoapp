.class Lcom/narvii/widget/TouchImageView$CompatScroller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompatScroller"
.end annotation


# instance fields
.field isPreGingerbread:Z

.field overScroller:Landroid/widget/OverScroller;

.field scroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/narvii/widget/TouchImageView;


# direct methods
.method public constructor <init>(Lcom/narvii/widget/TouchImageView;Landroid/content/Context;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/TouchImageView$CompatScroller;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 p1, 0x0

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/narvii/widget/TouchImageView$CompatScroller;->isPreGingerbread:Z

    .line 9
    .line 10
    new-instance p1, Landroid/widget/OverScroller;

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/widget/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    .line 16
    return-void
.end method


# virtual methods
.method public computeScrollOffset()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/TouchImageView$CompatScroller;->isPreGingerbread:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$CompatScroller;->scroller:Landroid/widget/Scroller;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 22
    move-result v0

    .line 23
    return v0
.end method

.method public fling(IIIIIIII)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/narvii/widget/TouchImageView$CompatScroller;->isPreGingerbread:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v2, v0, Lcom/narvii/widget/TouchImageView$CompatScroller;->scroller:Landroid/widget/Scroller;

    .line 8
    move v3, p1

    .line 9
    move v4, p2

    .line 10
    move v5, p3

    .line 11
    .line 12
    move/from16 v6, p4

    .line 13
    .line 14
    move/from16 v7, p5

    .line 15
    .line 16
    move/from16 v8, p6

    .line 17
    .line 18
    move/from16 v9, p7

    .line 19
    .line 20
    move/from16 v10, p8

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {v2 .. v10}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    iget-object v3, v0, Lcom/narvii/widget/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    .line 27
    move v4, p1

    .line 28
    move v5, p2

    .line 29
    move v6, p3

    .line 30
    .line 31
    move/from16 v7, p4

    .line 32
    .line 33
    move/from16 v8, p5

    .line 34
    .line 35
    move/from16 v9, p6

    .line 36
    .line 37
    move/from16 v10, p7

    .line 38
    .line 39
    move/from16 v11, p8

    .line 40
    .line 41
    .line 42
    invoke-virtual/range {v3 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 43
    :goto_0
    return-void
.end method

.method public forceFinished(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/TouchImageView$CompatScroller;->isPreGingerbread:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$CompatScroller;->scroller:Landroid/widget/Scroller;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 16
    :goto_0
    return-void
.end method

.method public getCurrX()I
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/TouchImageView$CompatScroller;->isPreGingerbread:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$CompatScroller;->scroller:Landroid/widget/Scroller;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public getCurrY()I
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/TouchImageView$CompatScroller;->isPreGingerbread:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$CompatScroller;->scroller:Landroid/widget/Scroller;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public isFinished()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/TouchImageView$CompatScroller;->isPreGingerbread:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$CompatScroller;->scroller:Landroid/widget/Scroller;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    .line 17
    move-result v0

    .line 18
    return v0
.end method
