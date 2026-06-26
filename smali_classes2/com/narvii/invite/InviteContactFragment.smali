.class public Lcom/narvii/invite/InviteContactFragment;
.super Lcom/narvii/list/NVListFragment;
.source "InviteContactFragment.java"

# interfaces
.implements Lcom/narvii/widget/SearchBar$OnSearchListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/app/FragmentOnBackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/invite/InviteContactFragment$LoadContactsTask;,
        Lcom/narvii/invite/InviteContactFragment$SearchContactTask;,
        Lcom/narvii/invite/InviteContactFragment$ContactAdapter;,
        Lcom/narvii/invite/InviteContactFragment$SearchEmptyAdapter;,
        Lcom/narvii/invite/InviteContactFragment$SearchContactAdapter;,
        Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;,
        Lcom/narvii/invite/InviteContactFragment$Contact;
    }
.end annotation


# static fields
.field public static final REQUEST_EMAIL:I = 0x2

.field public static final REQUEST_PHONE:I = 0x1


# instance fields
.field private allContactAdapter:Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;

.field allContactList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/invite/InviteContactFragment$Contact;",
            ">;"
        }
    .end annotation
.end field

.field private finalStep:Landroid/widget/TextView;

.field gotActivityResult:Z

.field inviteeLayout:Lcom/narvii/util/layouts/NVFlowLayout;

.field keyword:Ljava/lang/String;

.field private mSearchBar:Lcom/narvii/widget/SearchBar;

.field public mergeAdapter:Lcom/narvii/list/MergeAdapter;

.field onClickListener:Landroid/view/View$OnClickListener;

.field searchContactList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/invite/InviteContactFragment$Contact;",
            ">;"
        }
    .end annotation
.end field

.field public searchContactTask:Lcom/narvii/invite/InviteContactFragment$SearchContactTask;

.field public selectedContactList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/invite/InviteContactFragment$Contact;",
            ">;"
        }
    .end annotation
.end field

.field selectedView:Landroid/view/View;

.field send:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/invite/InviteContactFragment;->selectedContactList:Ljava/util/List;

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/narvii/invite/InviteContactFragment;->gotActivityResult:Z

    .line 92
    new-instance v0, Lcom/narvii/invite/InviteContactFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/invite/InviteContactFragment$1;-><init>(Lcom/narvii/invite/InviteContactFragment;)V

    iput-object v0, p0, Lcom/narvii/invite/InviteContactFragment;->onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/invite/InviteContactFragment;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/narvii/invite/InviteContactFragment;->removeSelectedView()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/invite/InviteContactFragment;)Lcom/narvii/widget/SearchBar;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/narvii/invite/InviteContactFragment;->mSearchBar:Lcom/narvii/widget/SearchBar;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/invite/InviteContactFragment;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/narvii/invite/InviteContactFragment;->update()V

    return-void
.end method

.method private goDashboard()V
    .locals 4

    .line 724
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const-string v0, "community"

    .line 725
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/Community;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Community;

    .line 729
    new-instance v1, Lcom/narvii/notification/Notification;

    const-string v2, "new"

    invoke-direct {v1, v2, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    const-string v0, "notification"

    .line 730
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 731
    invoke-virtual {v0, v1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method private removeSelectedView()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment;->selectedView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment;->selectedContactList:Ljava/util/List;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 142
    invoke-direct {p0}, Lcom/narvii/invite/InviteContactFragment;->update()V

    return-void
.end method

.method private searchContact(Ljava/lang/String;)V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment;->searchContactTask:Lcom/narvii/invite/InviteContactFragment$SearchContactTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 272
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 274
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 275
    iput-object v0, p0, Lcom/narvii/invite/InviteContactFragment;->keyword:Ljava/lang/String;

    .line 276
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    if-eqz v0, :cond_1

    .line 277
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 280
    :cond_1
    new-instance v0, Lcom/narvii/invite/InviteContactFragment$SearchContactTask;

    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment;->allContactList:Ljava/util/List;

    invoke-direct {v0, p0, v1, p1}, Lcom/narvii/invite/InviteContactFragment$SearchContactTask;-><init>(Lcom/narvii/invite/InviteContactFragment;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/invite/InviteContactFragment;->searchContactTask:Lcom/narvii/invite/InviteContactFragment$SearchContactTask;

    .line 281
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment;->searchContactTask:Lcom/narvii/invite/InviteContactFragment$SearchContactTask;

    new-instance v1, Lcom/narvii/invite/InviteContactFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/narvii/invite/InviteContactFragment$5;-><init>(Lcom/narvii/invite/InviteContactFragment;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/narvii/invite/InviteContactFragment$SearchContactTask;->callback:Lcom/narvii/util/Callback;

    .line 291
    iget-object p1, p0, Lcom/narvii/invite/InviteContactFragment;->searchContactTask:Lcom/narvii/invite/InviteContactFragment$SearchContactTask;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private sendInviteOut()Z
    .locals 9

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 304
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "subject"

    .line 306
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text"

    .line 307
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 308
    iget-object v4, p0, Lcom/narvii/invite/InviteContactFragment;->selectedContactList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/invite/InviteContactFragment$Contact;

    .line 309
    iget-object v6, v5, Lcom/narvii/invite/InviteContactFragment$Contact;->email:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 310
    iget-object v5, v5, Lcom/narvii/invite/InviteContactFragment$Contact;->email:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 311
    :cond_1
    iget-object v6, v5, Lcom/narvii/invite/InviteContactFragment$Contact;->phone:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 312
    iget-object v5, v5, Lcom/narvii/invite/InviteContactFragment$Contact;->phone:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 318
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_4

    .line 319
    new-instance v4, Lcom/narvii/share/ShareUtils;

    invoke-direct {v4, p0}, Lcom/narvii/share/ShareUtils;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 v7, 0x0

    .line 320
    invoke-virtual {v4, v7, v2, v3, v7}, Lcom/narvii/share/ShareUtils;->emailIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_3

    .line 322
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcom/narvii/lib/R$string;->application_not_found:I

    invoke-static {v2, v4, v6}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_1

    :cond_3
    :try_start_0
    const-string v4, "android.intent.extra.EMAIL"

    .line 325
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x2

    .line 326
    invoke-virtual {p0, v2, v4}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v2

    .line 329
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :cond_4
    :goto_1
    const/4 v2, 0x0

    .line 334
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 335
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 337
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    if-lt v7, v8, :cond_5

    .line 338
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 340
    invoke-virtual {v4, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sms:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "; "

    invoke-static {v8, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v7, "sms_body"

    .line 344
    invoke-virtual {v4, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    :try_start_1
    invoke-virtual {p0, v4, v5}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_1
    move-exception v3

    .line 349
    invoke-virtual {v3}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :cond_6
    :goto_3
    if-nez v2, :cond_7

    .line 354
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/narvii/lib/R$string;->application_not_found:I

    invoke-static {v3, v4, v6}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/util/NVToast;->show()V

    :cond_7
    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    :goto_4
    return v5
.end method

.method private update()V
    .locals 1

    .line 146
    invoke-direct {p0}, Lcom/narvii/invite/InviteContactFragment;->updateInviteeView()V

    .line 147
    invoke-direct {p0}, Lcom/narvii/invite/InviteContactFragment;->updateSendView()V

    .line 148
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private updateInviteeView()V
    .locals 6

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 437
    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment;->selectedContactList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/invite/InviteContactFragment$Contact;

    .line 438
    invoke-virtual {v2}, Lcom/narvii/invite/InviteContactFragment$Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment;->inviteeLayout:Lcom/narvii/util/layouts/NVFlowLayout;

    if-eqz v0, :cond_2

    .line 441
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 443
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$layout;->textview_invitee:I

    iget-object v2, p0, Lcom/narvii/invite/InviteContactFragment;->inviteeLayout:Lcom/narvii/util/layouts/NVFlowLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 444
    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment;->inviteeLayout:Lcom/narvii/util/layouts/NVFlowLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/narvii/lib/R$string;->invitees:I

    invoke-virtual {p0, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 447
    :goto_1
    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment;->selectedContactList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 448
    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment;->selectedContactList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/invite/InviteContactFragment$Contact;

    .line 449
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v4, Lcom/narvii/lib/R$layout;->textview_invitee_item:I

    iget-object v5, p0, Lcom/narvii/invite/InviteContactFragment;->inviteeLayout:Lcom/narvii/util/layouts/NVFlowLayout;

    invoke-virtual {v2, v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 450
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/narvii/invite/InviteContactFragment$Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/narvii/invite/InviteContactFragment;->selectedContactList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v0, v5, :cond_1

    const-string v5, ","

    goto :goto_2

    :cond_1
    const-string v5, ""

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 452
    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment;->inviteeLayout:Lcom/narvii/util/layouts/NVFlowLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private updateSendView()V
    .locals 5

    .line 429
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment;->send:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 430
    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment;->selectedContactList:Ljava/util/List;

    invoke-static {v1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 431
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment;->send:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment;->selectedContactList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_0

    sget v1, Lcom/narvii/lib/R$string;->send_one_invite:I

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget v1, Lcom/narvii/lib/R$string;->send_invites:I

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/narvii/invite/InviteContactFragment;->selectedContactList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 4

    .line 156
    new-instance p1, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;-><init>(Lcom/narvii/invite/InviteContactFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/invite/InviteContactFragment;->allContactAdapter:Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;

    .line 157
    new-instance p1, Lcom/narvii/invite/InviteContactFragment$SearchContactAdapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/invite/InviteContactFragment$SearchContactAdapter;-><init>(Lcom/narvii/invite/InviteContactFragment;Lcom/narvii/app/NVContext;)V

    .line 158
    new-instance v0, Lcom/narvii/invite/InviteContactFragment$2;

    invoke-direct {v0, p0, p0}, Lcom/narvii/invite/InviteContactFragment$2;-><init>(Lcom/narvii/invite/InviteContactFragment;Lcom/narvii/app/NVContext;)V

    .line 162
    new-instance v1, Lcom/narvii/invite/InviteContactFragment$SearchEmptyAdapter;

    invoke-direct {v1, p0, p0}, Lcom/narvii/invite/InviteContactFragment$SearchEmptyAdapter;-><init>(Lcom/narvii/invite/InviteContactFragment;Lcom/narvii/app/NVContext;)V

    .line 163
    new-instance v2, Lcom/narvii/list/MergeAdapter;

    invoke-direct {v2, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v2, p0, Lcom/narvii/invite/InviteContactFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 164
    iget-object v2, p0, Lcom/narvii/invite/InviteContactFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    iget-object v3, p0, Lcom/narvii/invite/InviteContactFragment;->allContactAdapter:Lcom/narvii/invite/InviteContactFragment$AllContactAdapter;

    invoke-virtual {v2, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 165
    iget-object v2, p0, Lcom/narvii/invite/InviteContactFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    invoke-virtual {v2, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 166
    iget-object p1, p0, Lcom/narvii/invite/InviteContactFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 167
    iget-object p1, p0, Lcom/narvii/invite/InviteContactFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    new-instance v1, Lcom/narvii/adapter/MarginAdapter;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x428c0000    # 70.0f

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1, p0, v2}, Lcom/narvii/adapter/MarginAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 168
    iget-object p1, p0, Lcom/narvii/invite/InviteContactFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    return-object v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 133
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 708
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p3, 0x2

    if-ne p1, p3, :cond_3

    :cond_0
    const-string p1, "afterCreateCommunity"

    .line 710
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/narvii/invite/InviteContactFragment;->gotActivityResult:Z

    if-nez p1, :cond_1

    .line 711
    iput-boolean p2, p0, Lcom/narvii/invite/InviteContactFragment;->gotActivityResult:Z

    .line 712
    invoke-direct {p0}, Lcom/narvii/invite/InviteContactFragment;->goDashboard()V

    goto :goto_0

    .line 714
    :cond_1
    iget-object p1, p0, Lcom/narvii/invite/InviteContactFragment;->mSearchBar:Lcom/narvii/widget/SearchBar;

    if-eqz p1, :cond_2

    .line 715
    invoke-virtual {p1}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 717
    :cond_2
    iget-object p1, p0, Lcom/narvii/invite/InviteContactFragment;->selectedContactList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 718
    invoke-direct {p0}, Lcom/narvii/invite/InviteContactFragment;->update()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 1

    const-string v0, "afterCreateCommunity"

    .line 364
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    invoke-direct {p0}, Lcom/narvii/invite/InviteContactFragment;->goDashboard()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 368
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->finish()V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 296
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 297
    sget v0, Lcom/narvii/lib/R$id;->send:I

    if-ne p1, v0, :cond_0

    .line 298
    invoke-direct {p0}, Lcom/narvii/invite/InviteContactFragment;->sendInviteOut()Z

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 174
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 175
    sget p1, Lcom/narvii/lib/R$string;->invite_contacts:I

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const/4 p1, 0x1

    .line 176
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setScrollToHideKeyboard(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 255
    sget p3, Lcom/narvii/lib/R$layout;->fragment_invite_contact:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 2

    .line 182
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 183
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 184
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 185
    new-instance p2, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/narvii/invite/InviteContactFragment$3;

    invoke-direct {v1, p0}, Lcom/narvii/invite/InviteContactFragment$3;-><init>(Lcom/narvii/invite/InviteContactFragment;)V

    invoke-direct {p2, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 219
    new-instance v0, Lcom/narvii/invite/InviteContactFragment$4;

    invoke-direct {v0, p0, p2}, Lcom/narvii/invite/InviteContactFragment$4;-><init>(Lcom/narvii/invite/InviteContactFragment;Landroid/view/GestureDetector;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 0

    .line 265
    invoke-direct {p0, p2}, Lcom/narvii/invite/InviteContactFragment;->searchContact(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->clearFocus()V

    .line 267
    invoke-virtual {p1}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 0

    .line 260
    invoke-direct {p0, p2}, Lcom/narvii/invite/InviteContactFragment;->searchContact(Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .line 230
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 231
    sget p2, Lcom/narvii/lib/R$id;->search:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/SearchBar;

    iput-object p2, p0, Lcom/narvii/invite/InviteContactFragment;->mSearchBar:Lcom/narvii/widget/SearchBar;

    .line 232
    iget-object p2, p0, Lcom/narvii/invite/InviteContactFragment;->mSearchBar:Lcom/narvii/widget/SearchBar;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 233
    iget-object p2, p0, Lcom/narvii/invite/InviteContactFragment;->mSearchBar:Lcom/narvii/widget/SearchBar;

    invoke-virtual {p2, p0}, Lcom/narvii/widget/SearchBar;->setOnSearchListener(Lcom/narvii/widget/SearchBar$OnSearchListener;)V

    .line 234
    iget-object p2, p0, Lcom/narvii/invite/InviteContactFragment;->mSearchBar:Lcom/narvii/widget/SearchBar;

    sget v1, Lcom/narvii/lib/R$string;->invite_contact_search_hint:I

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/narvii/widget/SearchBar;->setHintText(Ljava/lang/CharSequence;)V

    .line 236
    sget p2, Lcom/narvii/lib/R$id;->final_step:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/invite/InviteContactFragment;->finalStep:Landroid/widget/TextView;

    .line 237
    iget-object p2, p0, Lcom/narvii/invite/InviteContactFragment;->finalStep:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/narvii/lib/R$string;->create_final_step_desc:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u270c"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object p2, p0, Lcom/narvii/invite/InviteContactFragment;->finalStep:Landroid/widget/TextView;

    const-string v0, "afterCreateCommunity"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v1

    invoke-static {p2, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 240
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 241
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/narvii/app/NVActivity;

    sget v0, Lcom/narvii/lib/R$string;->skip:I

    invoke-virtual {p2, v0}, Lcom/narvii/app/NVActivity;->setActionBarLeftTextView(I)Landroid/widget/TextView;

    .line 245
    :cond_0
    sget p2, Lcom/narvii/lib/R$id;->invitee_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/layouts/NVFlowLayout;

    iput-object p2, p0, Lcom/narvii/invite/InviteContactFragment;->inviteeLayout:Lcom/narvii/util/layouts/NVFlowLayout;

    .line 246
    invoke-direct {p0}, Lcom/narvii/invite/InviteContactFragment;->updateInviteeView()V

    .line 248
    sget p2, Lcom/narvii/lib/R$id;->send:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/invite/InviteContactFragment;->send:Landroid/widget/TextView;

    .line 249
    iget-object p1, p0, Lcom/narvii/invite/InviteContactFragment;->send:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    invoke-direct {p0}, Lcom/narvii/invite/InviteContactFragment;->updateSendView()V

    return-void
.end method
