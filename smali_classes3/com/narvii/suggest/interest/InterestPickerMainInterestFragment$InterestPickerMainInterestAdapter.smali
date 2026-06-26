.class Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "InterestPickerMainInterestFragment.java"


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

    .line 197
    iput-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;

    const/4 p1, -0x2

    .line 198
    invoke-direct {p0, p2, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    return-void
.end method

.method private checkAndShowSkip()V
    .locals 5

    .line 254
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    move-result v0

    .line 255
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->errorMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 256
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->isListShown()Z

    move-result v3

    .line 257
    iget-object v4, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;

    iget-object v4, v4, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->btSkip:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    if-eqz v3, :cond_1

    if-nez v0, :cond_2

    :cond_1
    if-eqz v1, :cond_3

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;

    iget-object v0, v0, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->btSkip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 224
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/persona/onboarding-interests"

    .line 225
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;

    .line 226
    invoke-virtual {v0}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "language"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 227
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;

    invoke-virtual {v0}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "selectedAge"

    .line 228
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "selectedGender"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 229
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 230
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 231
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "age"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "gender"

    invoke-virtual {v1, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 233
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

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

    .line 209
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
    .locals 5

    const v0, 0x7f0b036b

    .line 274
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 275
    instance-of p3, p1, Lcom/narvii/model/InterestData;

    if-eqz p3, :cond_6

    .line 276
    check-cast p1, Lcom/narvii/model/InterestData;

    .line 278
    iget-object p3, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;

    invoke-static {p3}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->access$100(Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;)Ljava/util/LinkedHashMap;

    move-result-object p3

    iget-object v0, p1, Lcom/narvii/model/InterestData;->interestId:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    const v0, 0x7f090571

    .line 280
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 281
    iget-object v1, p1, Lcom/narvii/model/InterestData;->style:Lcom/narvii/model/InterestData$Style;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/narvii/model/InterestData$Style;->backgroundImage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 283
    iget-object v0, p1, Lcom/narvii/model/InterestData;->style:Lcom/narvii/model/InterestData$Style;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/narvii/model/InterestData$Style;->backgroundColor:I

    goto :goto_1

    :cond_1
    const v0, -0x750db

    :goto_1
    const v1, 0x7f090835

    .line 285
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz p3, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    const/16 v4, 0x8

    .line 286
    :goto_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 287
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const v1, 0x7f090834

    .line 289
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p3, :cond_3

    const/4 v2, 0x0

    :cond_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f090b9a

    .line 291
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz p3, :cond_4

    move v2, v0

    goto :goto_3

    :cond_4
    const/high16 v2, -0x4e000000

    .line 292
    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 293
    invoke-virtual {p1}, Lcom/narvii/model/InterestData;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    instance-of p1, p2, Lcom/narvii/widget/RadiusLayout;

    if-eqz p1, :cond_6

    if-eqz p3, :cond_5

    .line 297
    move-object p1, p2

    check-cast p1, Lcom/narvii/widget/RadiusLayout;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {p3, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p3

    invoke-virtual {p1, v0, p3, v3, v3}, Lcom/narvii/widget/RadiusLayout;->setStroke(IIII)V

    goto :goto_4

    .line 299
    :cond_5
    move-object p1, p2

    check-cast p1, Lcom/narvii/widget/RadiusLayout;

    const/4 p3, -0x1

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p1, p3, v0, v1, v2}, Lcom/narvii/widget/RadiusLayout;->setStroke(IIII)V

    :cond_6
    :goto_4
    return-object p2
.end method

.method public onAttach()V
    .locals 1

    .line 203
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onAttach()V

    .line 204
    new-instance v0, Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;

    invoke-direct {v0, p0}, Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;-><init>(Lcom/narvii/list/NVPagedAdapter;)V

    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    return-void
.end method

.method protected onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V
    .locals 0

    .line 249
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/list/NVPagedAdapter;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V

    .line 250
    invoke-direct {p0}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;->checkAndShowSkip()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 308
    instance-of v0, p3, Lcom/narvii/model/InterestData;

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Lcom/narvii/model/InterestData;

    iget-object v1, v0, Lcom/narvii/model/InterestData;->interestId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 310
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;

    invoke-static {p1}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->access$100(Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;)Ljava/util/LinkedHashMap;

    move-result-object p1

    iget-object p2, v0, Lcom/narvii/model/InterestData;->interestId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 311
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;

    invoke-static {p1}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->access$100(Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;)Ljava/util/LinkedHashMap;

    move-result-object p1

    iget-object p2, v0, Lcom/narvii/model/InterestData;->interestId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 313
    :cond_0
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;

    invoke-static {p1}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->access$100(Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;)Ljava/util/LinkedHashMap;

    move-result-object p1

    iget-object p2, v0, Lcom/narvii/model/InterestData;->interestId:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object p1, Lcom/narvii/logging/ActSemantic;->chooseInterest:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, v0, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 316
    :goto_0
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;

    invoke-virtual {p1}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->updateButton()V

    .line 317
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;

    invoke-static {p1}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->access$000(Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;)Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const/4 p1, 0x1

    return p1

    .line 320
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 195
    check-cast p2, Lcom/narvii/suggest/interest/MainInterestResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/suggest/interest/MainInterestResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/suggest/interest/MainInterestResponse;I)V
    .locals 0

    .line 238
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 239
    invoke-direct {p0}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;->checkAndShowSkip()V

    .line 240
    invoke-virtual {p2}, Lcom/narvii/suggest/interest/MainInterestResponse;->getSelectedInterest()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 242
    iget-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;

    invoke-static {p2}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->access$100(Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;)Ljava/util/LinkedHashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 243
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;->this$0:Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;

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

    .line 214
    const-class v0, Lcom/narvii/suggest/interest/MainInterestResponse;

    return-object v0
.end method
