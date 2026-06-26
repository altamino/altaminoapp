.class public Lcom/narvii/chat/template/MessageTemplateFragment;
.super Lcom/narvii/list/NVListFragment;
.source "MessageTemplateFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/template/MessageTemplateFragment$TemplateAdapter;
    }
.end annotation


# static fields
.field private static final NEED_STRIKE:Ljava/lang/String; = "needStrike"


# instance fields
.field private needStrike:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/template/MessageTemplateFragment;I)Ljava/lang/String;
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/narvii/chat/template/MessageTemplateFragment;->getTemplateType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/chat/template/MessageTemplateFragment;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/narvii/chat/template/MessageTemplateFragment;->needStrike:Z

    return p0
.end method

.method private getTemplateType(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const p1, 0x7f0f1063

    .line 148
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const p1, 0x7f0f0223

    .line 150
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 52
    new-instance p1, Lcom/narvii/chat/template/MessageTemplateFragment$TemplateAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/chat/template/MessageTemplateFragment$TemplateAdapter;-><init>(Lcom/narvii/chat/template/MessageTemplateFragment;)V

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 33
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0f10ac

    .line 34
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "needStrike"

    if-eqz p1, :cond_0

    .line 36
    iget-boolean v1, p0, Lcom/narvii/chat/template/MessageTemplateFragment;->needStrike:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/chat/template/MessageTemplateFragment;->needStrike:Z

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/chat/template/MessageTemplateFragment;->needStrike:Z

    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 46
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 47
    iget-boolean v0, p0, Lcom/narvii/chat/template/MessageTemplateFragment;->needStrike:Z

    const-string v1, "needStrike"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
