.class public Lcom/narvii/invite/InviteContactFragment$SearchContactTask;
.super Landroid/os/AsyncTask;
.source "InviteContactFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/invite/InviteContactFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchContactTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/narvii/invite/InviteContactFragment$Contact;",
        ">;>;"
    }
.end annotation


# instance fields
.field allContactList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/invite/InviteContactFragment$Contact;",
            ">;"
        }
    .end annotation
.end field

.field callback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/util/List<",
            "Lcom/narvii/invite/InviteContactFragment$Contact;",
            ">;>;"
        }
    .end annotation
.end field

.field keyword:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/invite/InviteContactFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/invite/InviteContactFragment;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/invite/InviteContactFragment$Contact;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 742
    iput-object p1, p0, Lcom/narvii/invite/InviteContactFragment$SearchContactTask;->this$0:Lcom/narvii/invite/InviteContactFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 743
    iput-object p2, p0, Lcom/narvii/invite/InviteContactFragment$SearchContactTask;->allContactList:Ljava/util/List;

    .line 744
    iput-object p3, p0, Lcom/narvii/invite/InviteContactFragment$SearchContactTask;->keyword:Ljava/lang/String;

    return-void
.end method

.method private isContatin(Lcom/narvii/invite/InviteContactFragment$Contact;Ljava/lang/String;)Z
    .locals 3

    .line 770
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 772
    iget-object v0, p1, Lcom/narvii/invite/InviteContactFragment$Contact;->name:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 776
    :cond_0
    iget-object v0, p1, Lcom/narvii/invite/InviteContactFragment$Contact;->email:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 780
    :cond_1
    iget-object p1, p1, Lcom/narvii/invite/InviteContactFragment$Contact;->phone:Ljava/lang/String;

    if-eqz p1, :cond_2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 735
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/narvii/invite/InviteContactFragment$SearchContactTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/narvii/invite/InviteContactFragment$Contact;",
            ">;"
        }
    .end annotation

    .line 754
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 755
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$SearchContactTask;->allContactList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 756
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/invite/InviteContactFragment$Contact;

    .line 757
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "search contact task is cancelled"

    .line 758
    invoke-static {v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 761
    :cond_1
    iget-object v2, p0, Lcom/narvii/invite/InviteContactFragment$SearchContactTask;->keyword:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/narvii/invite/InviteContactFragment$SearchContactTask;->isContatin(Lcom/narvii/invite/InviteContactFragment$Contact;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 762
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 735
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/narvii/invite/InviteContactFragment$SearchContactTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/invite/InviteContactFragment$Contact;",
            ">;)V"
        }
    .end annotation

    .line 788
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$SearchContactTask;->callback:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_0

    .line 789
    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/util/List<",
            "Lcom/narvii/invite/InviteContactFragment$Contact;",
            ">;>;)V"
        }
    .end annotation

    .line 749
    iput-object p1, p0, Lcom/narvii/invite/InviteContactFragment$SearchContactTask;->callback:Lcom/narvii/util/Callback;

    return-void
.end method
