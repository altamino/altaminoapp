.class Lcom/narvii/story/quiz/StoryQuizResultAdapter$LoginAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "StoryQuizResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/quiz/StoryQuizResultAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoginAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/quiz/StoryQuizResultAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/story/quiz/StoryQuizResultAdapter;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultAdapter$LoginAdapter;->this$0:Lcom/narvii/story/quiz/StoryQuizResultAdapter;

    .line 86
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultAdapter$LoginAdapter;->this$0:Lcom/narvii/story/quiz/StoryQuizResultAdapter;

    iget-object v0, v0, Lcom/narvii/story/quiz/StoryQuizResultAdapter;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p1, 0x7f0b05ca

    .line 106
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 107
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method protected onSubviewClick(Landroid/view/View;Z)Z
    .locals 1

    .line 113
    iget-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultAdapter$LoginAdapter;->this$0:Lcom/narvii/story/quiz/StoryQuizResultAdapter;

    invoke-virtual {p1}, Lcom/narvii/story/quiz/StoryQuizResultAdapter;->onClickLogin()V

    .line 114
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Lcom/narvii/account/LoginActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
