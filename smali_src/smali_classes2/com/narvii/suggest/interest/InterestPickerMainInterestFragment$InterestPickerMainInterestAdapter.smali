.class Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterestPickerMainInterestAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/model/InterestData;",
        "Lcom/narvii/suggest/interest/MainInterestResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;

    .line 3
    const/4 p1, -0x2

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 7
    return-void
.end method

.method private checkAndShowSkip()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->errorMessage()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    const/4 v1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v1, v2

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->isListShown()Z

    .line 18
    move-result v3

    .line 19
    .line 20
    iget-object v4, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;

    .line 21
    .line 22
    iget-object v4, v4, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->btSkip:Landroid/widget/TextView;

    .line 23
    .line 24
    if-eqz v4, :cond_3

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    :cond_1
    if-eqz v1, :cond_3

    .line 31
    .line 32
    .line 33
    :cond_2
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 34
    :cond_3
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "/persona/onboarding-interests"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->getLanguageCode()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v1, "language"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->getData()Landroid/os/Bundle;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const-string v1, "selectedAge"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 36
    move-result v2

    .line 37
    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    const-string v2, "selectedGender"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 44
    move-result v3

    .line 45
    .line 46
    if-eqz v3, :cond_0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 50
    move-result v1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 54
    move-result v0

    .line 55
    .line 56
    const-string v2, "age"

    .line 57
    .line 58
    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    const-string v2, "gender"

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 74
    .line 75
    .line 76
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 77
    move-result-object p1

    .line 78
    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/InterestData;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/model/InterestData;

    return-object v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "InterestsList"

    return-object v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0d03a6

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    instance-of p3, p1, Lcom/narvii/model/InterestData;

    .line 10
    .line 11
    if-eqz p3, :cond_3

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/model/InterestData;

    .line 14
    .line 15
    iget-object p3, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;

    .line 16
    .line 17
    .line 18
    invoke-static {p3}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->x(Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;)Ljava/util/LinkedHashMap;

    .line 19
    move-result-object p3

    .line 20
    .line 21
    iget-object v0, p1, Lcom/narvii/model/InterestData;->interestId:Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 25
    move-result p3

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a06eb

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 35
    .line 36
    iget-object v1, p1, Lcom/narvii/model/InterestData;->style:Lcom/narvii/model/InterestData$Style;

    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    iget-object v1, v1, Lcom/narvii/model/InterestData$Style;->backgroundImage:Ljava/lang/String;

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v1, 0x0

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    const v0, 0x7f0a0aeb

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v0

    .line 53
    const/4 v1, 0x0

    .line 54
    .line 55
    if-eqz p3, :cond_1

    .line 56
    move v2, v1

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_1
    const/16 v2, 0x8

    .line 60
    .line 61
    .line 62
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    const v0, 0x7f0a0e9e

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    check-cast v0, Landroid/widget/TextView;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/narvii/model/InterestData;->getDisplayName()Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    instance-of p1, p2, Lcom/narvii/widget/RadiusLayout;

    .line 81
    .line 82
    if-eqz p1, :cond_3

    .line 83
    const/4 p1, -0x1

    .line 84
    .line 85
    if-eqz p3, :cond_2

    .line 86
    move-object p3, p2

    .line 87
    .line 88
    check-cast p3, Lcom/narvii/widget/RadiusLayout;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    const/high16 v2, 0x40800000    # 4.0f

    .line 95
    .line 96
    .line 97
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 98
    move-result v0

    .line 99
    .line 100
    .line 101
    invoke-virtual {p3, p1, v0, v1, v1}, Lcom/narvii/widget/RadiusLayout;->setStroke(IIII)V

    .line 102
    goto :goto_2

    .line 103
    :cond_2
    move-object p3, p2

    .line 104
    .line 105
    check-cast p3, Lcom/narvii/widget/RadiusLayout;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p3, p1, v1, v1, v1}, Lcom/narvii/widget/RadiusLayout;->setStroke(IIII)V

    .line 109
    :cond_3
    :goto_2
    return-object p2
.end method

.method public onAttach()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onAttach()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;-><init>(Lcom/narvii/list/NVPagedAdapter;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 12
    return-void
.end method

.method protected onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/list/NVPagedAdapter;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;->checkAndShowSkip()V

    .line 7
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/InterestData;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/model/InterestData;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/narvii/model/InterestData;->interestId:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->x(Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;)Ljava/util/LinkedHashMap;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    iget-object p2, v0, Lcom/narvii/model/InterestData;->interestId:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 23
    move-result p1

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->x(Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;)Ljava/util/LinkedHashMap;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    iget-object p2, v0, Lcom/narvii/model/InterestData;->interestId:Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_0
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->x(Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;)Ljava/util/LinkedHashMap;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    iget-object p2, v0, Lcom/narvii/model/InterestData;->interestId:Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    sget-object p1, Lcom/narvii/logging/ActSemantic;->chooseInterest:Lcom/narvii/logging/ActSemantic;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 54
    .line 55
    :goto_0
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->updateButton()V

    .line 59
    .line 60
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->w(Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;)Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 68
    const/4 p1, 0x1

    .line 69
    return p1

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 73
    move-result p1

    .line 74
    return p1
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/suggest/interest/MainInterestResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/suggest/interest/MainInterestResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/suggest/interest/MainInterestResponse;I)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 3
    invoke-direct {p0}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;->checkAndShowSkip()V

    .line 4
    invoke-virtual {p2}, Lcom/narvii/suggest/interest/MainInterestResponse;->getSelectedInterest()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;

    .line 5
    invoke-static {p2}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->x(Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;)Ljava/util/LinkedHashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;

    .line 6
    invoke-virtual {p1}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->updateButton()V

    :cond_0
    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/suggest/interest/MainInterestResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/suggest/interest/MainInterestResponse;

    return-object v0
.end method
