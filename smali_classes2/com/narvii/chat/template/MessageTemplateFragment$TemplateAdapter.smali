.class Lcom/narvii/chat/template/MessageTemplateFragment$TemplateAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "MessageTemplateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/template/MessageTemplateFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TemplateAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/chat/template/MessageTemplate;",
        "Lcom/narvii/chat/template/MessageTemplateListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/template/MessageTemplateFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/template/MessageTemplateFragment;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/narvii/chat/template/MessageTemplateFragment$TemplateAdapter;->this$0:Lcom/narvii/chat/template/MessageTemplateFragment;

    .line 59
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 74
    new-instance p1, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {p1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    const-string v0, "/admin/message-template"

    .line 75
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 76
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
            "Lcom/narvii/chat/template/MessageTemplate;",
            ">;"
        }
    .end annotation

    .line 64
    const-class v0, Lcom/narvii/chat/template/MessageTemplate;

    return-object v0
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/chat/template/MessageTemplate;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/chat/template/MessageTemplate;",
            ">;"
        }
    .end annotation

    .line 128
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    iget-object v1, p0, Lcom/narvii/chat/template/MessageTemplateFragment$TemplateAdapter;->this$0:Lcom/narvii/chat/template/MessageTemplateFragment;

    invoke-static {v1}, Lcom/narvii/chat/template/MessageTemplateFragment;->access$100(Lcom/narvii/chat/template/MessageTemplateFragment;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 131
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/template/MessageTemplate;

    .line 132
    iget v1, p2, Lcom/narvii/chat/template/MessageTemplate;->messageType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 133
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object p1, v0

    :cond_2
    return-object p1
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

    .line 92
    instance-of v0, p1, Lcom/narvii/chat/template/MessageTemplate;

    if-eqz v0, :cond_1

    .line 93
    check-cast p1, Lcom/narvii/chat/template/MessageTemplate;

    const v0, 0x7f0b051d

    .line 94
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 95
    iget-object p3, p1, Lcom/narvii/chat/template/MessageTemplate;->content:Ljava/lang/String;

    const v0, 0x7f09070a

    .line 96
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f09070d

    .line 97
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p1, Lcom/narvii/chat/template/MessageTemplate;->title:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget p3, p1, Lcom/narvii/chat/template/MessageTemplate;->messageType:I

    const/4 v0, 0x1

    const v1, 0x7f090b54

    const v2, 0x7f090b55

    if-ne p3, v0, :cond_0

    .line 99
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/FontAwesomeView;

    const/high16 v0, -0x10000

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/FontAwesomeView;

    const v0, 0x7f0f08a1

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 101
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/narvii/chat/template/MessageTemplateFragment$TemplateAdapter;->this$0:Lcom/narvii/chat/template/MessageTemplateFragment;

    iget p1, p1, Lcom/narvii/chat/template/MessageTemplate;->messageType:I

    invoke-static {v0, p1}, Lcom/narvii/chat/template/MessageTemplateFragment;->access$000(Lcom/narvii/chat/template/MessageTemplateFragment;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/FontAwesomeView;

    const v0, -0x777778

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/FontAwesomeView;

    iget-object v0, p0, Lcom/narvii/chat/template/MessageTemplateFragment$TemplateAdapter;->this$0:Lcom/narvii/chat/template/MessageTemplateFragment;

    const v2, 0x7f0f0968

    invoke-virtual {v0, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/narvii/chat/template/MessageTemplateFragment$TemplateAdapter;->this$0:Lcom/narvii/chat/template/MessageTemplateFragment;

    iget p1, p1, Lcom/narvii/chat/template/MessageTemplate;->messageType:I

    invoke-static {v0, p1}, Lcom/narvii/chat/template/MessageTemplateFragment;->access$000(Lcom/narvii/chat/template/MessageTemplateFragment;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 114
    instance-of v0, p3, Lcom/narvii/chat/template/MessageTemplate;

    if-eqz v0, :cond_0

    .line 115
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 116
    check-cast p3, Lcom/narvii/chat/template/MessageTemplate;

    iget p2, p3, Lcom/narvii/chat/template/MessageTemplate;->messageType:I

    const-string p4, "template_type"

    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    iget-object p2, p3, Lcom/narvii/chat/template/MessageTemplate;->content:Ljava/lang/String;

    const-string p3, "template_content"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    iget-object p2, p0, Lcom/narvii/chat/template/MessageTemplateFragment$TemplateAdapter;->this$0:Lcom/narvii/chat/template/MessageTemplateFragment;

    const/4 p3, -0x1

    invoke-virtual {p2, p3, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 119
    iget-object p1, p0, Lcom/narvii/chat/template/MessageTemplateFragment$TemplateAdapter;->this$0:Lcom/narvii/chat/template/MessageTemplateFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    const/4 p1, 0x1

    return p1

    .line 122
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/chat/template/MessageTemplateListResponse;",
            ">;"
        }
    .end annotation

    .line 69
    const-class v0, Lcom/narvii/chat/template/MessageTemplateListResponse;

    return-object v0
.end method
