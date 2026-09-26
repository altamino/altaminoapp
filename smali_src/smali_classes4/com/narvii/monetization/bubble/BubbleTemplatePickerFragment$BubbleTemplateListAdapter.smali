.class Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$BubbleTemplateListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$BubbleTemplateListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 6
    return-void
.end method

.method private selectTemplate(Lcom/narvii/monetization/bubble/model/BubbleTemplate;)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$BubbleTemplateListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/monetization/bubble/model/BubbleTemplate;->id()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;->v(Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$BubbleTemplateListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;->listener:Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$TemplatePickedListener;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, p1}, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$TemplatePickedListener;->onTemplatePicked(Lcom/narvii/monetization/bubble/model/BubbleTemplate;)V

    .line 25
    :cond_1
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 6
    .line 7
    const-string v0, "chat/chat-bubble/templates"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 15
    move-result-object p1

    .line 16
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

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/monetization/bubble/model/BubbleTemplate;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/monetization/bubble/model/BubbleTemplate;

    .line 7
    .line 8
    .line 9
    const v0, 0x7f0d03c8

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    const p3, 0x7f0a0e42

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object p3

    .line 21
    .line 22
    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 23
    const/4 v0, 0x0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/monetization/bubble/model/BubbleTemplate;->getBackgroundMedia()Lcom/narvii/model/Media;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3, v1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 34
    .line 35
    .line 36
    const p3, 0x7f0a02e2

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object p3

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$BubbleTemplateListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;->t(Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;)Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/narvii/monetization/bubble/model/BubbleTemplate;->id()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    .line 53
    invoke-static {v1, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    move-result p1

    .line 55
    .line 56
    if-eqz p1, :cond_0

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/4 v0, 0x4

    .line 59
    .line 60
    .line 61
    :goto_0
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 62
    return-object p2

    .line 63
    :cond_1
    const/4 p1, 0x0

    .line 64
    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/monetization/bubble/model/BubbleTemplate;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/monetization/bubble/model/BubbleTemplate;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$BubbleTemplateListAdapter;->selectTemplate(Lcom/narvii/monetization/bubble/model/BubbleTemplate;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/monetization/bubble/BubbleTemplateListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$BubbleTemplateListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/bubble/BubbleTemplateListResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/bubble/BubbleTemplateListResponse;I)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$BubbleTemplateListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;

    .line 3
    invoke-static {p1}, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;->u(Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p2, Lcom/narvii/monetization/bubble/BubbleTemplateListResponse;->templateList:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$BubbleTemplateListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;

    const-string p3, "autoChoose"

    .line 6
    invoke-virtual {p1, p3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p2, Lcom/narvii/monetization/bubble/BubbleTemplateListResponse;->templateList:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/bubble/model/BubbleTemplate;

    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$BubbleTemplateListAdapter;->selectTemplate(Lcom/narvii/monetization/bubble/model/BubbleTemplate;)V

    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment$BubbleTemplateListAdapter;->this$0:Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;

    const/4 p2, 0x1

    .line 8
    invoke-static {p1, p2}, Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;->w(Lcom/narvii/monetization/bubble/BubbleTemplatePickerFragment;Z)V

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

    const-class v0, Lcom/narvii/monetization/bubble/BubbleTemplateListResponse;

    return-object v0
.end method
