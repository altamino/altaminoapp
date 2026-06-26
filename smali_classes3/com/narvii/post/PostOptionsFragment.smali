.class public Lcom/narvii/post/PostOptionsFragment;
.super Lcom/narvii/app/NVFragment;
.source "PostOptionsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/app/FragmentWillFinishListener;


# instance fields
.field disableAnim:Z

.field extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field v0:Landroid/view/View;

.field v1:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/narvii/post/PostOptionsFragment;->disableAnim:Z

    return-void
.end method

.method private updateView()V
    .locals 5

    .line 100
    iget-object v0, p0, Lcom/narvii/post/PostOptionsFragment;->v1:Landroid/view/View;

    const v1, 0x7f090b03

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v2, p0, Lcom/narvii/post/PostOptionsFragment;->disableAnim:Z

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/narvii/post/PostOptionsFragment;->v0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/narvii/post/PostOptionsFragment;->disableAnim:Z

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0908a1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/narvii/post/PostOptionsFragment;->disableAnim:Z

    .line 111
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0908a0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    .line 112
    iput-boolean p1, p0, Lcom/narvii/post/PostOptionsFragment;->disableAnim:Z

    .line 115
    :cond_1
    invoke-direct {p0}, Lcom/narvii/post/PostOptionsFragment;->updateView()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 35
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 36
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    const v0, 0x7f0f0dcc

    .line 38
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const-string v0, "extensions"

    .line 40
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->createObjectNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/post/PostOptionsFragment;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 41
    iget-object v0, p0, Lcom/narvii/post/PostOptionsFragment;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "coverAnimation"

    aput-object v2, p1, v1

    invoke-static {v0, p1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/post/PostOptionsFragment;->disableAnim:Z

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 71
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x104000a

    const/4 v0, 0x0

    .line 73
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    new-instance p2, Lcom/narvii/util/ActionBarIcon;

    .line 74
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0483

    invoke-direct {p2, v0, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;I)V

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    .line 75
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0592

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 80
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x104000a

    if-ne v0, v1, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 83
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 53
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0908a1

    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/post/PostOptionsFragment;->v1:Landroid/view/View;

    const p2, 0x7f0908a0

    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/post/PostOptionsFragment;->v0:Landroid/view/View;

    .line 57
    iget-object p1, p0, Lcom/narvii/post/PostOptionsFragment;->v1:Landroid/view/View;

    const p2, 0x7f090b5b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0f0d8c

    .line 58
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 59
    iget-object p1, p0, Lcom/narvii/post/PostOptionsFragment;->v0:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f0f0d8b

    .line 60
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 61
    iget-object p1, p0, Lcom/narvii/post/PostOptionsFragment;->v1:Landroid/view/View;

    const p2, 0x7f0805b0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 62
    iget-object p1, p0, Lcom/narvii/post/PostOptionsFragment;->v0:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 63
    iget-object p1, p0, Lcom/narvii/post/PostOptionsFragment;->v1:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object p1, p0, Lcom/narvii/post/PostOptionsFragment;->v0:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-direct {p0}, Lcom/narvii/post/PostOptionsFragment;->updateView()V

    return-void
.end method

.method public willFinish(Lcom/narvii/app/NVActivity;)V
    .locals 4

    .line 88
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 89
    iget-boolean v1, p0, Lcom/narvii/post/PostOptionsFragment;->disableAnim:Z

    const-string v2, "coverAnimation"

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/narvii/post/PostOptionsFragment;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v3, "none"

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_0

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/narvii/post/PostOptionsFragment;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 94
    :goto_0
    iget-object v1, p0, Lcom/narvii/post/PostOptionsFragment;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extensions"

    .line 95
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 96
    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method
