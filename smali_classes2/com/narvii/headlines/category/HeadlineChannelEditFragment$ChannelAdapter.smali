.class Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "HeadlineChannelEditFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/headlines/category/HeadlineChannelEditFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChannelAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    .line 218
    invoke-direct {p0, p2, p3}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;Ljava/util/List;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    .line 222
    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;Ljava/util/List;)V

    return-void
.end method

.method private getChannelStatus(Lcom/narvii/headlines/category/HeadLineChannel;)I
    .locals 2

    if-eqz p1, :cond_3

    .line 344
    invoke-virtual {p1}, Lcom/narvii/headlines/category/HeadLineChannel;->isLocalChannel()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 348
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    invoke-static {v1}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->access$700(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 349
    invoke-virtual {p0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez v0, :cond_1

    .line 351
    invoke-static {}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->access$500()I

    move-result p1

    return p1

    :cond_1
    if-le p1, v0, :cond_2

    .line 353
    invoke-static {}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->access$300()I

    move-result p1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->access$500()I

    move-result p1

    :goto_0
    return p1

    .line 345
    :cond_3
    :goto_1
    invoke-static {}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->access$400()I

    move-result p1

    return p1
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    invoke-static {v0}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->access$800(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 237
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 238
    instance-of v0, p1, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 240
    :cond_0
    instance-of v0, p1, Lcom/narvii/headlines/category/HeadLineChannel;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 242
    :cond_1
    instance-of p1, p1, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelManager;

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 255
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 256
    instance-of v1, v0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;

    const v2, 0x7f0906b9

    if-eqz v1, :cond_0

    const p1, 0x7f0b03d9

    .line 257
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 258
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 259
    iget-object p3, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    check-cast v0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;

    iget v0, v0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$Section;->nameId:I

    invoke-virtual {p3, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1

    .line 262
    :cond_0
    instance-of v1, v0, Lcom/narvii/headlines/category/HeadLineChannel;

    const/4 v3, 0x0

    if-eqz v1, :cond_c

    const v1, 0x7f0b03d8

    .line 263
    invoke-virtual {p0, v1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090562

    .line 264
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NVImageView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p3, :cond_3

    .line 266
    move-object v4, v0

    check-cast v4, Lcom/narvii/headlines/category/HeadLineChannel;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/narvii/headlines/category/HeadLineChannel;->getLocalEditIconDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 268
    invoke-virtual {p3, v5}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 269
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 271
    :cond_1
    iget-object v5, v4, Lcom/narvii/headlines/category/HeadLineChannel;->icon:Ljava/lang/String;

    invoke-virtual {p3, v5}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 272
    iget-object v4, v4, Lcom/narvii/headlines/category/HeadLineChannel;->icon:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x8

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const v4, -0xb9babb

    .line 273
    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_3
    :goto_1
    const p3, 0x7f090b9a

    .line 276
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_5

    .line 278
    move-object v4, v0

    check-cast v4, Lcom/narvii/headlines/category/HeadLineChannel;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/narvii/headlines/category/HeadLineChannel;->getLocalTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 279
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/narvii/headlines/category/HeadLineChannel;->getLocalTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 281
    :cond_4
    iget-object v4, v4, Lcom/narvii/headlines/category/HeadLineChannel;->title:Ljava/lang/String;

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    :cond_5
    :goto_2
    check-cast v0, Lcom/narvii/headlines/category/HeadLineChannel;

    invoke-direct {p0, v0}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;->getChannelStatus(Lcom/narvii/headlines/category/HeadLineChannel;)I

    move-result p3

    const v4, 0x7f090376

    .line 286
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 288
    invoke-virtual {v0}, Lcom/narvii/headlines/category/HeadLineChannel;->isLocalChannel()Z

    move-result v0

    if-nez v0, :cond_7

    .line 289
    invoke-static {}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->access$300()I

    move-result v0

    if-ne p3, v0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    .line 288
    :cond_7
    :goto_3
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    const v0, 0x7f090058

    .line 292
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-eqz v0, :cond_b

    .line 294
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 295
    invoke-static {}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->access$400()I

    move-result v1

    if-ne p3, v1, :cond_9

    const/4 v1, 0x4

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 296
    invoke-static {}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->access$500()I

    move-result v1

    if-ne p3, v1, :cond_a

    const/4 v2, 0x1

    :cond_a
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 297
    new-instance p3, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter$1;

    invoke-direct {p3, p0, p1}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter$1;-><init>(Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;I)V

    invoke-virtual {v0, p3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_b
    return-object p2

    .line 316
    :cond_c
    instance-of p1, v0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelManager;

    if-eqz p1, :cond_d

    const p1, 0x7f0b03d7

    .line 317
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 318
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 319
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object p3, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    check-cast v0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelManager;

    iget v0, v0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelManager;->nameId:I

    invoke-virtual {p3, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1

    :cond_d
    return-object v3
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 232
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    if-eqz p5, :cond_0

    .line 328
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0906b9

    if-ne v0, v1, :cond_0

    .line 331
    const-class v0, Lcom/narvii/suggest/interest/InterestPickerFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 332
    iget-object v1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$ChannelAdapter;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    const/16 v2, 0x66

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 334
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 1

    .line 227
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method
