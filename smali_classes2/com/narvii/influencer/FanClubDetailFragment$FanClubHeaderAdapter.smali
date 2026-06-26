.class Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "FanClubDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/influencer/FanClubDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FanClubHeaderAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/influencer/FanClubDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/influencer/FanClubDetailFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    .line 131
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x1

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
    .locals 7

    const p1, 0x7f0b03c0

    .line 156
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09041f

    .line 158
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 159
    iget-object p3, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    iget-object p3, p3, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    invoke-virtual {p3}, Lcom/narvii/influencer/FanClub;->isActive()Z

    move-result p3

    if-eqz p3, :cond_0

    const p3, 0x7f08034b

    goto :goto_0

    :cond_0
    const p3, 0x7f08034c

    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    iget-object p2, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    iget-object p2, p2, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    iget-object p2, p2, Lcom/narvii/influencer/FanClub;->targetUserProfile:Lcom/narvii/model/User;

    const p3, 0x7f090b9a

    .line 163
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_1

    move-object p2, v0

    goto :goto_1

    .line 164
    :cond_1
    iget-object v3, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    const v4, 0x7f0f0f22

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f09042b

    .line 166
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 168
    iget-object p3, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    invoke-static {p3}, Lcom/narvii/influencer/FanClubDetailFragment;->access$000(Lcom/narvii/influencer/FanClubDetailFragment;)Ljava/text/DateFormat;

    move-result-object p3

    if-nez p3, :cond_2

    .line 169
    iget-object p3, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    const/4 v3, 0x2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v3

    invoke-static {p3, v3}, Lcom/narvii/influencer/FanClubDetailFragment;->access$002(Lcom/narvii/influencer/FanClubDetailFragment;Ljava/text/DateFormat;)Ljava/text/DateFormat;

    .line 172
    :cond_2
    iget-object p3, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    iget-object p3, p3, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    invoke-virtual {p3}, Lcom/narvii/influencer/FanClub;->isActive()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 173
    iget-object p3, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    iget-object v3, p3, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    iget-object v3, v3, Lcom/narvii/influencer/FanClub;->createdTime:Ljava/util/Date;

    if-nez v3, :cond_3

    move-object p3, v0

    goto :goto_2

    :cond_3
    const v3, 0x7f0f068b

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p3}, Lcom/narvii/influencer/FanClubDetailFragment;->access$000(Lcom/narvii/influencer/FanClubDetailFragment;)Ljava/text/DateFormat;

    move-result-object v5

    iget-object v6, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    iget-object v6, v6, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    iget-object v6, v6, Lcom/narvii/influencer/FanClub;->createdTime:Ljava/util/Date;

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p3, v3, v4}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 174
    :goto_2
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 176
    :cond_4
    iget-object p3, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    iget-object p3, p3, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    invoke-virtual {p3}, Lcom/narvii/influencer/FanClub;->daysExpired()I

    move-result p3

    if-nez p3, :cond_5

    const p3, 0x7f0f0685

    .line 178
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_5
    if-ne p3, v2, :cond_6

    const p3, 0x7f0f0686

    .line 180
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_6
    if-le p3, v2, :cond_7

    .line 182
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f0687

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :cond_7
    :goto_3
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    if-eqz p3, :cond_8

    const/4 p3, 0x1

    goto :goto_4

    :cond_8
    const/4 p3, 0x0

    :goto_4
    invoke-static {p2, p3}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 188
    iget-object p2, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    iget-object p2, p2, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    invoke-virtual {p2}, Lcom/narvii/influencer/FanClub;->isActive()Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    iget-object p2, p2, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    iget-boolean p3, p2, Lcom/narvii/influencer/FanClub;->isAutoRenew:Z

    if-nez p3, :cond_b

    .line 189
    invoke-virtual {p2}, Lcom/narvii/influencer/FanClub;->expiringDays()I

    move-result p2

    if-nez p2, :cond_9

    .line 191
    iget-object p2, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    const p3, 0x7f0f0b87

    invoke-virtual {p2, p3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_9
    if-ne p2, v2, :cond_a

    .line 193
    iget-object p2, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    const p3, 0x7f0f0b88

    invoke-virtual {p2, p3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_a
    if-lez p2, :cond_b

    const/4 p3, 0x7

    if-gt p2, p3, :cond_b

    .line 195
    iget-object p3, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    const v0, 0x7f0f0b89

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v1

    invoke-virtual {p3, v0, v3}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_b
    :goto_5
    const p2, 0x7f090409

    .line 198
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 199
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    .line 200
    :cond_c
    invoke-static {p2, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    const p2, 0x7f090215

    .line 202
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090954

    .line 203
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 204
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object p3, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    iget-object p3, p3, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    invoke-virtual {p3}, Lcom/narvii/influencer/FanClub;->isClosed()Z

    move-result p3

    if-eqz p3, :cond_d

    const p3, 0x7f08072b

    goto :goto_6

    :cond_d
    const p3, 0x7f080715

    :goto_6
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 206
    iget-object p3, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    iget-object p3, p3, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    iget-boolean p3, p3, Lcom/narvii/influencer/FanClub;->isAutoRenew:Z

    xor-int/2addr p3, v2

    invoke-static {p2, p3}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p5, :cond_0

    .line 212
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f090215

    if-ne v1, v2, :cond_0

    .line 213
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ndc://x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    iget-object p2, p2, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    iget p2, p2, Lcom/narvii/influencer/FanClub;->ndcId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, 0x0

    invoke-static {p3}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    iget-object p2, p2, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    iget-object p2, p2, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 215
    new-instance p2, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p4, "android.intent.action.VIEW"

    invoke-direct {p2, p4, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "__model"

    .line 216
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 218
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0

    :cond_0
    if-eqz p5, :cond_2

    .line 222
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f090954

    if-ne v1, v2, :cond_2

    .line 223
    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    iget-object p1, p1, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    invoke-virtual {p1}, Lcom/narvii/influencer/FanClub;->isClosed()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 224
    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    invoke-static {p1}, Lcom/narvii/influencer/FanClubDetailFragment;->access$100(Lcom/narvii/influencer/FanClubDetailFragment;)V

    return v0

    .line 227
    :cond_1
    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    iget-object p1, p1, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    iget-object p2, p1, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    iget p1, p1, Lcom/narvii/influencer/FanClub;->ndcId:I

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const-string p4, "Fan Club Detailed Page"

    invoke-static {p0, p2, p1, p3, p4}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->showSubscriptionDialog(Lcom/narvii/app/NVContext;Ljava/lang/String;IZLjava/lang/String;)V

    return v0

    .line 230
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
