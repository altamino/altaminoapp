.class Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$BubbleTemplateListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "BubbleTemplatePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BubbleTemplateListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/monetization/bubble/model/BubbleTemplate;",
        "Lcom/narvii/monetization/bubble/BubbleTemplateListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;Lcom/narvii/app/NVContext;I)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$BubbleTemplateListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;

    .line 83
    invoke-direct {p0, p2, p3}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    return-void
.end method

.method private selectTemplate(Lcom/narvii/monetization/bubble/model/BubbleTemplate;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$BubbleTemplateListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;

    invoke-virtual {p1}, Lcom/narvii/monetization/bubble/model/BubbleTemplate;->id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;->access$002(Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 164
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$BubbleTemplateListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;

    iget-object v0, v0, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;->listener:Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$TemplatePickedListener;

    if-eqz v0, :cond_1

    .line 165
    invoke-interface {v0, p1}, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$TemplatePickedListener;->onTemplatePicked(Lcom/narvii/monetization/bubble/model/BubbleTemplate;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 98
    new-instance p1, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {p1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    const-string v0, "chat/chat-bubble/templates"

    .line 99
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 100
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
            "Lcom/narvii/monetization/bubble/model/BubbleTemplate;",
            ">;"
        }
    .end annotation

    .line 88
    const-class v0, Lcom/narvii/monetization/bubble/model/BubbleTemplate;

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
    .locals 2

    .line 121
    instance-of v0, p1, Lcom/narvii/monetization/bubble/model/BubbleTemplate;

    if-eqz v0, :cond_1

    .line 122
    check-cast p1, Lcom/narvii/monetization/bubble/model/BubbleTemplate;

    const v0, 0x7f0b038d

    .line 123
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090b50

    .line 125
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NVImageView;

    const/4 v0, 0x0

    .line 126
    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 127
    invoke-virtual {p1}, Lcom/narvii/monetization/bubble/model/BubbleTemplate;->getBackgroundMedia()Lcom/narvii/model/Media;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    const p3, 0x7f090228

    .line 129
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 130
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$BubbleTemplateListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;

    invoke-static {v1}, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;->access$000(Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/narvii/monetization/bubble/model/BubbleTemplate;->id()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 139
    instance-of v0, p3, Lcom/narvii/monetization/bubble/model/BubbleTemplate;

    if-eqz v0, :cond_0

    .line 140
    move-object v0, p3

    check-cast v0, Lcom/narvii/monetization/bubble/model/BubbleTemplate;

    invoke-direct {p0, v0}, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$BubbleTemplateListAdapter;->selectTemplate(Lcom/narvii/monetization/bubble/model/BubbleTemplate;)V

    .line 142
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 80
    check-cast p2, Lcom/narvii/monetization/bubble/BubbleTemplateListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$BubbleTemplateListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/bubble/BubbleTemplateListResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/bubble/BubbleTemplateListResponse;I)V
    .locals 0

    .line 147
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 148
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$BubbleTemplateListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;

    invoke-static {p1}, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;->access$100(Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 149
    iget-object p1, p2, Lcom/narvii/monetization/bubble/BubbleTemplateListResponse;->templateList:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 150
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$BubbleTemplateListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;

    const-string p3, "autoChoose"

    .line 151
    invoke-virtual {p1, p3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 152
    iget-object p1, p2, Lcom/narvii/monetization/bubble/BubbleTemplateListResponse;->templateList:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/bubble/model/BubbleTemplate;

    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$BubbleTemplateListAdapter;->selectTemplate(Lcom/narvii/monetization/bubble/model/BubbleTemplate;)V

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$BubbleTemplateListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;->access$102(Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;Z)Z

    :cond_1
    return-void
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/monetization/bubble/BubbleTemplateListResponse;",
            ">;"
        }
    .end annotation

    .line 93
    const-class v0, Lcom/narvii/monetization/bubble/BubbleTemplateListResponse;

    return-object v0
.end method
