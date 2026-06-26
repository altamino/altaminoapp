.class Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$TaskAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "MoodBaseListFragment.java"

# interfaces
.implements Lcom/narvii/list/HoverAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$TaskAdapter;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    .line 394
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 399
    sget-object v0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x41400000    # 12.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLockInfo(I)Lcom/narvii/onlinestatus/LockInfo;
    .locals 2

    .line 413
    iget-object v0, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$TaskAdapter;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->lockInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    iget-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$TaskAdapter;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    iget-object p1, p1, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->lockInfos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/onlinestatus/LockInfo;

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const v0, 0x7f0b0533

    .line 428
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 429
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$TaskAdapter;->getLockInfo(I)Lcom/narvii/onlinestatus/LockInfo;

    move-result-object p3

    const v0, 0x7f0904e3

    .line 430
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    mul-int/lit8 v1, p1, 0xc

    const/16 v2, 0x8

    add-int/2addr v1, v2

    .line 433
    iget-object v3, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$TaskAdapter;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    const/16 v4, 0xc

    invoke-static {v3, p3, v0, v1, v4}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->access$500(Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;Lcom/narvii/onlinestatus/LockInfo;Landroid/widget/GridLayout;II)V

    const v0, 0x7f0906a0

    .line 435
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09012c

    .line 436
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 437
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$TaskAdapter;->showLockBackground(I)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    .line 438
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 439
    iget-object v3, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$TaskAdapter;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    iget-object v3, v3, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->emptyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    iget-object v3, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$TaskAdapter;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    iget-object v3, v3, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->lockInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v6

    if-lt p1, v3, :cond_2

    .line 441
    iget-object v3, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$TaskAdapter;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    iget-object v3, v3, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->lockInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v6

    if-ne p1, v3, :cond_0

    const v3, 0x7f0805fe

    .line 442
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 443
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$TaskAdapter;->getCount()I

    move-result v3

    sub-int/2addr v3, v6

    if-ne p1, v3, :cond_1

    const v3, 0x7f0805fc

    .line 444
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    const v3, 0x7f0805fd

    .line 446
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    const v3, 0x7f0805fb

    .line 449
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 452
    :cond_3
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 456
    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$TaskAdapter;->showLockViews(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 457
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f090562

    .line 458
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/NVImageView;

    .line 459
    iget v2, p3, Lcom/narvii/onlinestatus/LockInfo;->iconId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f090b5b

    .line 461
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 462
    iget v2, p3, Lcom/narvii/onlinestatus/LockInfo;->textId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f090c06

    .line 464
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 465
    iget v1, p3, Lcom/narvii/onlinestatus/LockInfo;->unlockDrawableId:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 466
    iget-object p3, p3, Lcom/narvii/onlinestatus/LockInfo;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 468
    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 470
    :goto_1
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$TaskAdapter;->isHover(I)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$TaskAdapter;->showLockViews(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 471
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 473
    :cond_5
    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_2
    return-object p2
.end method

.method public isHover(I)Z
    .locals 2

    .line 480
    iget-object v0, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$TaskAdapter;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->lockInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public showLockBackground(I)Z
    .locals 0

    .line 417
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$TaskAdapter;->getLockInfo(I)Lcom/narvii/onlinestatus/LockInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 418
    iget-boolean p1, p1, Lcom/narvii/onlinestatus/LockInfo;->locked:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public showLockViews(I)Z
    .locals 1

    .line 422
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$TaskAdapter;->getLockInfo(I)Lcom/narvii/onlinestatus/LockInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 423
    iget-boolean v0, v0, Lcom/narvii/onlinestatus/LockInfo;->locked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$TaskAdapter;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->lockInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
