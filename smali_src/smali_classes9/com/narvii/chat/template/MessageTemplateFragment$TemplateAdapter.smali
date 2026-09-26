.class Lcom/narvii/chat/template/MessageTemplateFragment$TemplateAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/template/MessageTemplateFragment$TemplateAdapter;->this$0:Lcom/narvii/chat/template/MessageTemplateFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
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
    const-string v0, "/admin/message-template"

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
            "Lcom/narvii/chat/template/MessageTemplate;",
            ">;"
        }
    .end annotation

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

    .line 1
    .line 2
    new-instance p2, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/chat/template/MessageTemplateFragment$TemplateAdapter;->this$0:Lcom/narvii/chat/template/MessageTemplateFragment;

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Lcom/narvii/chat/template/MessageTemplateFragment;->t(Lcom/narvii/chat/template/MessageTemplateFragment;)Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-nez v1, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result p2

    .line 27
    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    check-cast p2, Lcom/narvii/chat/template/MessageTemplate;

    .line 35
    .line 36
    iget v1, p2, Lcom/narvii/chat/template/MessageTemplate;->messageType:I

    .line 37
    const/4 v2, 0x1

    .line 38
    .line 39
    if-eq v1, v2, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move-object p1, v0

    .line 45
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

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/chat/template/MessageTemplate;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/chat/template/MessageTemplate;

    .line 7
    .line 8
    .line 9
    const v0, 0x7f0d059e

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    iget-object p3, p1, Lcom/narvii/chat/template/MessageTemplate;->content:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    const v0, 0x7f0a096c

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Landroid/widget/TextView;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    const p3, 0x7f0a096f

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object p3

    .line 35
    .line 36
    check-cast p3, Landroid/widget/TextView;

    .line 37
    .line 38
    iget-object v0, p1, Lcom/narvii/chat/template/MessageTemplate;->title:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    iget p3, p1, Lcom/narvii/chat/template/MessageTemplate;->messageType:I

    .line 44
    const/4 v0, 0x1

    .line 45
    .line 46
    .line 47
    const v1, 0x7f0a0e46

    .line 48
    .line 49
    .line 50
    const v2, 0x7f0a0e47

    .line 51
    .line 52
    if-ne p3, v0, :cond_0

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    move-result-object p3

    .line 57
    .line 58
    check-cast p3, Lcom/narvii/widget/FontAwesomeView;

    .line 59
    .line 60
    const/high16 v0, -0x10000

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object p3

    .line 68
    .line 69
    check-cast p3, Lcom/narvii/widget/FontAwesomeView;

    .line 70
    .line 71
    .line 72
    const v0, 0x7f120952

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    move-result-object p3

    .line 80
    .line 81
    check-cast p3, Landroid/widget/TextView;

    .line 82
    .line 83
    iget-object v0, p0, Lcom/narvii/chat/template/MessageTemplateFragment$TemplateAdapter;->this$0:Lcom/narvii/chat/template/MessageTemplateFragment;

    .line 84
    .line 85
    iget p1, p1, Lcom/narvii/chat/template/MessageTemplate;->messageType:I

    .line 86
    .line 87
    .line 88
    invoke-static {v0, p1}, Lcom/narvii/chat/template/MessageTemplateFragment;->u(Lcom/narvii/chat/template/MessageTemplateFragment;I)Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    goto :goto_0

    .line 94
    .line 95
    .line 96
    :cond_0
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    move-result-object p3

    .line 98
    .line 99
    check-cast p3, Lcom/narvii/widget/FontAwesomeView;

    .line 100
    .line 101
    .line 102
    const v0, -0x777778

    .line 103
    .line 104
    .line 105
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    move-result-object p3

    .line 110
    .line 111
    check-cast p3, Lcom/narvii/widget/FontAwesomeView;

    .line 112
    .line 113
    iget-object v0, p0, Lcom/narvii/chat/template/MessageTemplateFragment$TemplateAdapter;->this$0:Lcom/narvii/chat/template/MessageTemplateFragment;

    .line 114
    .line 115
    .line 116
    const v2, 0x7f120a19

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 120
    move-result-object v0

    .line 121
    .line 122
    .line 123
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 127
    move-result-object p3

    .line 128
    .line 129
    check-cast p3, Landroid/widget/TextView;

    .line 130
    .line 131
    iget-object v0, p0, Lcom/narvii/chat/template/MessageTemplateFragment$TemplateAdapter;->this$0:Lcom/narvii/chat/template/MessageTemplateFragment;

    .line 132
    .line 133
    iget p1, p1, Lcom/narvii/chat/template/MessageTemplate;->messageType:I

    .line 134
    .line 135
    .line 136
    invoke-static {v0, p1}, Lcom/narvii/chat/template/MessageTemplateFragment;->u(Lcom/narvii/chat/template/MessageTemplateFragment;I)Ljava/lang/String;

    .line 137
    move-result-object p1

    .line 138
    .line 139
    .line 140
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :goto_0
    return-object p2

    .line 142
    :cond_1
    const/4 p1, 0x0

    .line 143
    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/chat/template/MessageTemplate;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance p1, Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 10
    .line 11
    check-cast p3, Lcom/narvii/chat/template/MessageTemplate;

    .line 12
    .line 13
    iget p2, p3, Lcom/narvii/chat/template/MessageTemplate;->messageType:I

    .line 14
    .line 15
    const-string p4, "template_type"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 19
    .line 20
    const-string p2, "template_content"

    .line 21
    .line 22
    iget-object p3, p3, Lcom/narvii/chat/template/MessageTemplate;->content:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    .line 27
    iget-object p2, p0, Lcom/narvii/chat/template/MessageTemplateFragment$TemplateAdapter;->this$0:Lcom/narvii/chat/template/MessageTemplateFragment;

    .line 28
    const/4 p3, -0x1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p3, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/chat/template/MessageTemplateFragment$TemplateAdapter;->this$0:Lcom/narvii/chat/template/MessageTemplateFragment;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 37
    const/4 p1, 0x1

    .line 38
    return p1

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 42
    move-result p1

    .line 43
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

    const-class v0, Lcom/narvii/chat/template/MessageTemplateListResponse;

    return-object v0
.end method
