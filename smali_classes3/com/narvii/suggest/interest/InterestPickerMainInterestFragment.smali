.class public Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;
.super Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;
.source "InterestPickerMainInterestFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;
    }
.end annotation


# static fields
.field private static final MIN_PICKS:I = 0x3


# instance fields
.field private btNext:Landroid/view/View;

.field private mainInterestAdapter:Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;

.field private selectedInterest:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/model/InterestData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;-><init>()V

    .line 48
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->selectedInterest:Ljava/util/LinkedHashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;)Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->mainInterestAdapter:Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->selectedInterest:Ljava/util/LinkedHashMap;

    return-object p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 8

    .line 91
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 93
    new-instance v0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$1;-><init>(Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;)V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const v4, 0x7f0b036a

    aput v4, v2, v3

    .line 109
    invoke-virtual {v0, v2}, Lcom/narvii/list/StaticViewAdapter;->addLayouts([I)V

    .line 110
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    new-instance v0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;-><init>(Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->mainInterestAdapter:Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;

    .line 115
    new-instance v0, Lcom/narvii/list/DivideColumnAdapter;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 116
    iget-object v2, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->mainInterestAdapter:Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 117
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 118
    new-instance v0, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment$BottomPaddingAdapter;

    iget-object v1, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->mainInterestAdapter:Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$InterestPickerMainInterestAdapter;

    invoke-direct {v0, p0, v1}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment$BottomPaddingAdapter;-><init>(Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;Lcom/narvii/list/NVAdapter;)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    return-object p1
.end method

.method protected doSubmit()V
    .locals 6

    .line 144
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 145
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 146
    new-instance v1, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$2;

    invoke-direct {v1, p0}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$2;-><init>(Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;)V

    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 155
    new-instance v1, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$3;

    invoke-direct {v1, p0}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment$3;-><init>(Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;)V

    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->failureListener:Lcom/narvii/util/Callback;

    .line 163
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    iget-object v2, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->selectedInterest:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_1

    .line 168
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/InterestData;

    .line 169
    invoke-virtual {v3}, Lcom/narvii/model/InterestData;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->getSubmitSemantic()Lcom/narvii/logging/ActSemantic;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->getSubmitAreaName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->selectedInterest:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "interestCount"

    invoke-virtual {v2, v4, v3}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    const-string v3, ","

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "interestNameList"

    invoke-virtual {v2, v3, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 174
    :cond_1
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v1

    .line 175
    iget-object v2, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->selectedInterest:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 176
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v4

    const-string v5, "interestId"

    .line 177
    invoke-virtual {v4, v5, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 178
    invoke-virtual {v1, v4}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_1

    .line 180
    :cond_2
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/persona/interests?language="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->getLanguageCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const-string v3, "interestList"

    .line 181
    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 182
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    const-string v2, "api"

    .line 183
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 184
    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v2, v1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public getListDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 129
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 124
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "TopInterests"

    return-object v0
.end method

.method protected getSubmitAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "Next"

    return-object v0
.end method

.method protected getSubmitSemantic()Lcom/narvii/logging/ActSemantic;
    .locals 1

    .line 192
    sget-object v0, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    return-object v0
.end method

.method protected isPickedEnough()Z
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->selectedInterest:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->selectedInterest:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0369

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 65
    invoke-super {p0, p1, p2}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f09075d

    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->btNext:Landroid/view/View;

    const p2, 0x7f09080a

    .line 68
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/list/overlay/OverlayLayout;

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVListView;

    invoke-virtual {p1, p2}, Lcom/narvii/list/overlay/OverlayLayout;->attach(Lcom/narvii/widget/NVListView;)V

    const/4 p2, 0x0

    .line 71
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 72
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/narvii/list/overlay/OverlayLayout;->setLayout(II)V

    .line 73
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/list/overlay/OverlayLayout;->setHeight1(I)V

    const v0, 0x7f090053

    .line 75
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 76
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 77
    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0f0794

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p2

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->updateButton()V

    return-void
.end method

.method protected updateButton()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->btNext:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->isPickedEnough()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method
