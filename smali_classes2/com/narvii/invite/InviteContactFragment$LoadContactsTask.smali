.class Lcom/narvii/invite/InviteContactFragment$LoadContactsTask;
.super Landroid/os/AsyncTask;
.source "InviteContactFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/invite/InviteContactFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadContactsTask"
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

.field final synthetic this$0:Lcom/narvii/invite/InviteContactFragment;


# direct methods
.method constructor <init>(Lcom/narvii/invite/InviteContactFragment;)V
    .locals 0

    .line 794
    iput-object p1, p0, Lcom/narvii/invite/InviteContactFragment$LoadContactsTask;->this$0:Lcom/narvii/invite/InviteContactFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 794
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/narvii/invite/InviteContactFragment$LoadContactsTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 12
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

    const-string/jumbo p1, "vnd.android.cursor.item/phone_v2"

    const-string/jumbo v0, "vnd.android.cursor.item/email_v2"

    .line 809
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 812
    :try_start_0
    iget-object v2, p0, Lcom/narvii/invite/InviteContactFragment$LoadContactsTask;->this$0:Lcom/narvii/invite/InviteContactFragment;

    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "mimetype=? OR mimetype=?"

    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v7, v2

    const/4 v9, 0x1

    aput-object p1, v7, v9

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 818
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_6

    :cond_0
    const-string v4, "display_name"

    .line 820
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "data1"

    .line 821
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mimetype"

    .line 822
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 824
    new-instance v7, Lcom/narvii/invite/InviteContactFragment$Contact;

    invoke-direct {v7}, Lcom/narvii/invite/InviteContactFragment$Contact;-><init>()V

    const/4 v8, -0x1

    .line 825
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, -0x5d8d3afc

    if-eq v10, v11, :cond_2

    const v11, 0x28c7a9f2

    if-eq v10, v11, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v8, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v8, 0x0

    :cond_3
    :goto_0
    if-eqz v8, :cond_5

    if-eq v8, v9, :cond_4

    goto :goto_1

    .line 830
    :cond_4
    iput-object v5, v7, Lcom/narvii/invite/InviteContactFragment$Contact;->phone:Ljava/lang/String;

    goto :goto_1

    .line 827
    :cond_5
    iput-object v5, v7, Lcom/narvii/invite/InviteContactFragment$Contact;->email:Ljava/lang/String;

    .line 833
    :goto_1
    iput-object v4, v7, Lcom/narvii/invite/InviteContactFragment$Contact;->name:Ljava/lang/String;

    .line 834
    invoke-virtual {v1, v7}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 835
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 838
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 841
    :cond_6
    :goto_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 842
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 794
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/narvii/invite/InviteContactFragment$LoadContactsTask;->onPostExecute(Ljava/util/List;)V

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

    .line 849
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 850
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$LoadContactsTask;->callback:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_0

    .line 851
    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

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

    .line 799
    iput-object p1, p0, Lcom/narvii/invite/InviteContactFragment$LoadContactsTask;->callback:Lcom/narvii/util/Callback;

    return-void
.end method
