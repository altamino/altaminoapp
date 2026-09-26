.class public Lcom/narvii/invite/InviteContactFragment$SearchContactTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/invite/InviteContactFragment$SearchContactTask;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/invite/InviteContactFragment$SearchContactTask;->allContactList:Ljava/util/List;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/invite/InviteContactFragment$SearchContactTask;->keyword:Ljava/lang/String;

    .line 10
    return-void
.end method

.method private isContatin(Lcom/narvii/invite/InviteContactFragment$Contact;Ljava/lang/String;)Z
    .locals 3

    .line 1
    .line 2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    iget-object v1, p1, Lcom/narvii/invite/InviteContactFragment$Contact;->name:Ljava/lang/String;

    .line 9
    const/4 v2, 0x1

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    return v2

    .line 23
    .line 24
    :cond_0
    iget-object v1, p1, Lcom/narvii/invite/InviteContactFragment$Contact;->email:Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 34
    move-result v1

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    return v2

    .line 38
    .line 39
    :cond_1
    iget-object p1, p1, Lcom/narvii/invite/InviteContactFragment$Contact;->phone:Ljava/lang/String;

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 49
    move-result p1

    .line 50
    .line 51
    if-eqz p1, :cond_2

    .line 52
    return v2

    .line 53
    :cond_2
    const/4 p1, 0x0

    .line 54
    return p1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
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

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$SearchContactTask;->allContactList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 3
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

    .line 4
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "search contact task is cancelled"

    .line 5
    invoke-static {v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/narvii/invite/InviteContactFragment$SearchContactTask;->keyword:Ljava/lang/String;

    .line 6
    invoke-direct {p0, v1, v2}, Lcom/narvii/invite/InviteContactFragment$SearchContactTask;->isContatin(Lcom/narvii/invite/InviteContactFragment$Contact;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
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

    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$SearchContactTask;->callback:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_0

    .line 2
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

    iput-object p1, p0, Lcom/narvii/invite/InviteContactFragment$SearchContactTask;->callback:Lcom/narvii/util/Callback;

    return-void
.end method
