.class Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;
.super Lcom/narvii/detail/DetailAdapter;
.source "AchievementsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/achievements/AchievementsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CircleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/detail/DetailAdapter<",
        "Lcom/narvii/achievements/AchievementsItem;",
        "Lcom/narvii/achievements/AchievementsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field achievementsItem:Lcom/narvii/achievements/AchievementsItem;

.field final synthetic this$0:Lcom/narvii/achievements/AchievementsFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/achievements/AchievementsFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    .line 365
    invoke-direct {p0, p2}, Lcom/narvii/detail/DetailAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;->achievementsItem:Lcom/narvii/achievements/AchievementsItem;

    if-eqz v0, :cond_0

    .line 456
    sget-object v0, Lcom/narvii/achievements/AchievementsFragment;->ACHIEVEMENTS:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 443
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/user-profile/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    const-string v3, "id"

    .line 444
    invoke-virtual {v2, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/achievements"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method protected getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 377
    sget-object v0, Lcom/narvii/achievements/AchievementsFragment;->ACHIEVEMENTS:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_1

    const p1, 0x7f0b047a

    .line 378
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 380
    iget-object p2, p0, Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    invoke-static {p2}, Lcom/narvii/achievements/AchievementsFragment;->access$100(Lcom/narvii/achievements/AchievementsFragment;)Z

    move-result p2

    const p3, 0x7f090748

    .line 381
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const v0, 0x7f0f0bf4

    goto :goto_0

    :cond_0
    const v0, 0x7f0f0aaf

    :goto_0
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    const-string p3, "config"

    .line 383
    invoke-virtual {p0, p3}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/config/ConfigService;

    const-string v0, "stats"

    .line 384
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/stats/StatsService;

    .line 385
    invoke-virtual {p3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/narvii/util/stats/StatsService;->getCachedTime(I)I

    move-result p3

    const v0, 0x7f09062d

    .line 386
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 387
    iget-object v1, p0, Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    iget-object v1, v1, Lcom/narvii/achievements/AchievementsFragment;->numberFormat:Ljava/text/NumberFormat;

    iget-object v2, p0, Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;->achievementsItem:Lcom/narvii/achievements/AchievementsItem;

    iget v2, v2, Lcom/narvii/achievements/AchievementsItem;->secondsSpentOfLast24Hours:I

    add-int/2addr v2, p3

    div-int/lit8 v2, v2, 0x3c

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09062e

    .line 388
    invoke-static {p1, v0, p2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    const v0, 0x7f090632

    .line 390
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 391
    iget-object v1, p0, Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    iget-object v1, v1, Lcom/narvii/achievements/AchievementsFragment;->numberFormat:Ljava/text/NumberFormat;

    iget-object v2, p0, Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;->achievementsItem:Lcom/narvii/achievements/AchievementsItem;

    iget v2, v2, Lcom/narvii/achievements/AchievementsItem;->secondsSpentOfLast7Days:I

    add-int/2addr v2, p3

    div-int/lit8 v2, v2, 0x3c

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f090633

    .line 392
    invoke-static {p1, p3, p2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    const p2, 0x7f0908bc

    .line 394
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 395
    iget-object p3, p0, Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    iget-object p3, p3, Lcom/narvii/achievements/AchievementsFragment;->numberFormat:Ljava/text/NumberFormat;

    iget-object v0, p0, Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;->achievementsItem:Lcom/narvii/achievements/AchievementsItem;

    iget v0, v0, Lcom/narvii/achievements/AchievementsItem;->numberOfPostsCreated:I

    int-to-long v0, v0

    invoke-virtual {p3, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0904af

    .line 397
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 398
    iget-object p3, p0, Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    iget-object p3, p3, Lcom/narvii/achievements/AchievementsFragment;->numberFormat:Ljava/text/NumberFormat;

    iget-object v0, p0, Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;->achievementsItem:Lcom/narvii/achievements/AchievementsItem;

    iget v0, v0, Lcom/narvii/achievements/AchievementsItem;->numberOfMembersCount:I

    int-to-long v0, v0

    invoke-virtual {p3, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1

    .line 402
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/detail/DetailAdapter;->getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected getCellTypes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/detail/DetailAdapter$CellType;",
            ">;)V"
        }
    .end annotation

    .line 432
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->getCellTypes(Ljava/util/List;)V

    .line 433
    sget-object v0, Lcom/narvii/achievements/AchievementsFragment;->ACHIEVEMENTS:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public objectType()Ljava/lang/Class;
    .locals 1

    .line 427
    const-class v0, Lcom/narvii/achievements/AchievementsItem;

    return-object v0
.end method

.method protected onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 449
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/detail/DetailAdapter;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;)V

    .line 450
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method

.method protected onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/achievements/AchievementsResponse;)V
    .locals 0

    .line 407
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V

    .line 408
    iget-object p1, p2, Lcom/narvii/achievements/AchievementsResponse;->achievements:Lcom/narvii/achievements/AchievementsItem;

    iput-object p1, p0, Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;->achievementsItem:Lcom/narvii/achievements/AchievementsItem;

    .line 409
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected bridge synthetic onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 360
    check-cast p2, Lcom/narvii/achievements/AchievementsResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/achievements/AchievementsResponse;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 421
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "achievementsItem"

    .line 422
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/achievements/AchievementsItem;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/achievements/AchievementsItem;

    iput-object p1, p0, Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;->achievementsItem:Lcom/narvii/achievements/AchievementsItem;

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 414
    invoke-super {p0}, Lcom/narvii/detail/DetailAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 415
    iget-object v1, p0, Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;->achievementsItem:Lcom/narvii/achievements/AchievementsItem;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "achievementsItem"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1

    .line 438
    const-class v0, Lcom/narvii/achievements/AchievementsResponse;

    return-object v0
.end method

.method public setObject(Lcom/narvii/achievements/AchievementsItem;)V
    .locals 1

    .line 370
    new-instance v0, Lcom/narvii/achievements/AchievementsResponse;

    invoke-direct {v0}, Lcom/narvii/achievements/AchievementsResponse;-><init>()V

    .line 371
    iput-object p1, v0, Lcom/narvii/achievements/AchievementsResponse;->achievements:Lcom/narvii/achievements/AchievementsItem;

    .line 372
    invoke-virtual {p0, v0}, Lcom/narvii/detail/DetailAdapter;->setResponse(Lcom/narvii/model/api/ObjectResponse;)V

    return-void
.end method

.method public bridge synthetic setObject(Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 360
    check-cast p1, Lcom/narvii/achievements/AchievementsItem;

    invoke-virtual {p0, p1}, Lcom/narvii/achievements/AchievementsFragment$CircleAdapter;->setObject(Lcom/narvii/achievements/AchievementsItem;)V

    return-void
.end method
