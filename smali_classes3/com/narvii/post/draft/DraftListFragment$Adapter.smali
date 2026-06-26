.class Lcom/narvii/post/draft/DraftListFragment$Adapter;
.super Lcom/narvii/list/NVAdapter;
.source "DraftListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/post/draft/DraftListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/post/draft/DraftListFragment$Stub;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/post/draft/DraftListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/post/draft/DraftListFragment;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    .line 141
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method private getIconBackgroundColor(I)I
    .locals 1

    if-nez p1, :cond_0

    const p1, 0x7f060157

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    const p1, 0x7f06016a

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    const p1, 0x7f060164

    goto :goto_0

    :cond_2
    const/4 v0, 0x7

    if-ne p1, v0, :cond_3

    const p1, 0x7f06015e

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    const p1, 0x7f060166

    goto :goto_0

    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    const p1, 0x7f060161

    goto :goto_0

    :cond_5
    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    const p1, 0x7f060167

    goto :goto_0

    :cond_6
    const p1, 0x106000b

    :goto_0
    return p1
.end method

.method private getIconDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-nez p1, :cond_0

    const p1, 0x7f0801a8

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    const p1, 0x7f0801b0

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    const p1, 0x7f0801ad

    goto :goto_0

    :cond_2
    const/4 v0, 0x7

    if-ne p1, v0, :cond_3

    const p1, 0x7f0801aa

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    const p1, 0x7f0801ae

    goto :goto_0

    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    const p1, 0x7f0801ac

    goto :goto_0

    :cond_5
    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    const p1, 0x7f0801af

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_7

    const/4 p1, 0x0

    return-object p1

    .line 369
    :cond_7
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "DraftList"

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Lcom/narvii/post/draft/DraftListFragment$Stub;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/post/draft/DraftListFragment$Stub;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 137
    invoke-virtual {p0, p1}, Lcom/narvii/post/draft/DraftListFragment$Adapter;->getItem(I)Lcom/narvii/post/draft/DraftListFragment$Stub;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 210
    invoke-virtual {p0, p1}, Lcom/narvii/post/draft/DraftListFragment$Adapter;->getItem(I)Lcom/narvii/post/draft/DraftListFragment$Stub;

    move-result-object p1

    iget-object p1, p1, Lcom/narvii/post/draft/DraftListFragment$Stub;->info:Lcom/narvii/post/DraftInfo;

    iget-object p1, p1, Lcom/narvii/post/DraftInfo;->id:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 215
    invoke-virtual {p0, p1}, Lcom/narvii/post/draft/DraftListFragment$Adapter;->getItem(I)Lcom/narvii/post/draft/DraftListFragment$Stub;

    move-result-object p1

    .line 216
    iget-object v0, p1, Lcom/narvii/post/draft/DraftListFragment$Stub;->info:Lcom/narvii/post/DraftInfo;

    iget-object v0, v0, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    const-string v1, "item"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 219
    :cond_0
    iget-object v0, p1, Lcom/narvii/post/draft/DraftListFragment$Stub;->info:Lcom/narvii/post/DraftInfo;

    iget-object v0, v0, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    const-string v1, "profile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    return p1

    .line 222
    :cond_1
    iget-object p1, p1, Lcom/narvii/post/draft/DraftListFragment$Stub;->info:Lcom/narvii/post/DraftInfo;

    iget-object p1, p1, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    const-string v0, "thread"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .line 240
    invoke-virtual {p0, p1}, Lcom/narvii/post/draft/DraftListFragment$Adapter;->getItem(I)Lcom/narvii/post/draft/DraftListFragment$Stub;

    move-result-object v0

    .line 241
    iget-object v1, v0, Lcom/narvii/post/draft/DraftListFragment$Stub;->post:Lcom/narvii/post/PostObject;

    .line 243
    invoke-virtual {p0, p1}, Lcom/narvii/post/draft/DraftListFragment$Adapter;->getItemViewType(I)I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1

    if-eq v2, v3, :cond_0

    const v2, 0x7f0b01cb

    goto :goto_0

    :cond_0
    const v2, 0x7f0b01ca

    goto :goto_0

    :cond_1
    const v2, 0x7f0b01cc

    goto :goto_0

    :cond_2
    const v2, 0x7f0b01c7

    .line 257
    :goto_0
    invoke-virtual {p0, v2, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 258
    invoke-interface {v1}, Lcom/narvii/post/PostObject;->title()Ljava/lang/String;

    move-result-object p3

    .line 259
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const v5, 0x7f090619

    if-eqz v2, :cond_3

    .line 260
    iget-object p3, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    const v2, 0x7f0f03b4

    invoke-virtual {p3, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 261
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0600d3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 263
    :cond_3
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0600d2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 265
    :goto_1
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0902d0

    .line 266
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-interface {v1}, Lcom/narvii/post/PostObject;->content()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0903d0

    .line 267
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 268
    iget-object v0, v0, Lcom/narvii/post/draft/DraftListFragment$Stub;->info:Lcom/narvii/post/DraftInfo;

    if-eqz v0, :cond_4

    if-eqz p3, :cond_4

    iget-wide v5, v0, Lcom/narvii/post/DraftInfo;->modifiedTime:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_4

    .line 269
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 270
    new-instance v2, Lcom/narvii/util/DateTimeFormatter;

    invoke-direct {v2}, Lcom/narvii/util/DateTimeFormatter;-><init>()V

    invoke-virtual {v2, v0}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    const p3, 0x7f090840

    .line 273
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const/4 v0, 0x0

    const/16 v2, 0x8

    if-eqz p3, :cond_6

    .line 275
    invoke-interface {v1}, Lcom/narvii/post/PostObject;->hasVideo()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    const/16 v5, 0x8

    :goto_2
    invoke-virtual {p3, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    const p3, 0x7f090571

    .line 277
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 278
    invoke-interface {v1}, Lcom/narvii/post/PostObject;->icon()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const v6, 0x7f0901a2

    const v7, 0x7f09057a

    const-string v8, ""

    if-nez v5, :cond_a

    .line 279
    invoke-virtual {p0, p1}, Lcom/narvii/post/draft/DraftListFragment$Adapter;->getItemViewType(I)I

    move-result p1

    if-ne p1, v4, :cond_7

    .line 280
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 281
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 283
    :cond_7
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 284
    invoke-interface {v1}, Lcom/narvii/post/PostObject;->icon()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 285
    instance-of p1, v1, Lcom/narvii/blog/post/BlogPost;

    if-eqz p1, :cond_9

    .line 286
    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    iget p1, v1, Lcom/narvii/blog/post/BlogPost;->type:I

    const/16 v1, 0x9

    if-ne p1, v1, :cond_8

    const-string p1, "story-cover"

    .line 288
    iput-object p1, p3, Lcom/narvii/widget/NVImageView;->imageType:Ljava/lang/String;

    goto/16 :goto_3

    .line 290
    :cond_8
    iput-object v8, p3, Lcom/narvii/widget/NVImageView;->imageType:Ljava/lang/String;

    goto/16 :goto_3

    .line 293
    :cond_9
    iput-object v8, p3, Lcom/narvii/widget/NVImageView;->imageType:Ljava/lang/String;

    goto/16 :goto_3

    .line 296
    :cond_a
    iput-object v8, p3, Lcom/narvii/widget/NVImageView;->imageType:Ljava/lang/String;

    .line 297
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 298
    instance-of v5, v1, Lcom/narvii/blog/post/BlogPost;

    if-eqz v5, :cond_b

    .line 299
    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    iget p1, v1, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 300
    invoke-direct {p0, p1}, Lcom/narvii/post/draft/DraftListFragment$Adapter;->getIconDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 301
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/narvii/post/draft/DraftListFragment$Adapter;->getIconBackgroundColor(I)I

    move-result p1

    invoke-static {v1, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_3

    .line 302
    :cond_b
    invoke-virtual {p0, p1}, Lcom/narvii/post/draft/DraftListFragment$Adapter;->getItemViewType(I)I

    move-result v1

    if-ne v1, v3, :cond_c

    const p1, 0x7f0801a9

    .line 303
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 304
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f060076

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_3

    .line 305
    :cond_c
    invoke-virtual {p0, p1}, Lcom/narvii/post/draft/DraftListFragment$Adapter;->getItemViewType(I)I

    move-result p1

    if-ne p1, v4, :cond_d

    .line 306
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 307
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 308
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const p3, 0x7f0801ab

    .line 310
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 311
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    const v1, 0x7f06016e

    invoke-static {p3, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_3

    :cond_d
    const/4 p1, 0x0

    .line 313
    invoke-virtual {p3, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 314
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f060170

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :goto_3
    const p1, 0x7f09033c

    .line 317
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 319
    iget-object p3, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    invoke-static {p3}, Lcom/narvii/post/draft/DraftListFragment;->access$100(Lcom/narvii/post/draft/DraftListFragment;)Z

    move-result p3

    if-eqz p3, :cond_e

    goto :goto_4

    :cond_e
    const/16 v0, 0x8

    :goto_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 320
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    :cond_f
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public isListShown()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 374
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;)V

    .line 375
    iget-object p1, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    invoke-static {p1}, Lcom/narvii/post/draft/DraftListFragment;->access$100(Lcom/narvii/post/draft/DraftListFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p5, :cond_0

    .line 376
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p1

    const p3, 0x7f09033c

    if-ne p1, p3, :cond_0

    .line 377
    invoke-virtual {p0, p2}, Lcom/narvii/post/draft/DraftListFragment$Adapter;->getItem(I)Lcom/narvii/post/draft/DraftListFragment$Stub;

    move-result-object p1

    .line 378
    iget-object p2, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    iget-object p2, p2, Lcom/narvii/post/draft/DraftListFragment;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object p1, p1, Lcom/narvii/post/draft/DraftListFragment$Stub;->info:Lcom/narvii/post/DraftInfo;

    iget-object p1, p1, Lcom/narvii/post/DraftInfo;->id:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/narvii/post/DraftManager;->deleteDraft(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0}, Lcom/narvii/post/draft/DraftListFragment$Adapter;->rebuild()V

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 383
    :cond_1
    invoke-virtual {p0, p2}, Lcom/narvii/post/draft/DraftListFragment$Adapter;->getItem(I)Lcom/narvii/post/draft/DraftListFragment$Stub;

    move-result-object p1

    const/4 p2, 0x0

    .line 385
    iget-object p3, p1, Lcom/narvii/post/draft/DraftListFragment$Stub;->info:Lcom/narvii/post/DraftInfo;

    iget-object p3, p3, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    const-string p4, "blog"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 386
    const-class p2, Lcom/narvii/blog/post/BlogPostActivity;

    goto/16 :goto_0

    .line 387
    :cond_2
    iget-object p3, p1, Lcom/narvii/post/draft/DraftListFragment$Stub;->info:Lcom/narvii/post/DraftInfo;

    iget-object p3, p3, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    const-string p4, "link"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 388
    const-class p2, Lcom/narvii/blog/post/LinkPostActivity;

    goto/16 :goto_0

    .line 389
    :cond_3
    iget-object p3, p1, Lcom/narvii/post/draft/DraftListFragment$Stub;->info:Lcom/narvii/post/DraftInfo;

    iget-object p3, p3, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    const-string p4, "item"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 390
    const-class p2, Lcom/narvii/item/post/ItemPostActivity;

    goto :goto_0

    .line 391
    :cond_4
    iget-object p3, p1, Lcom/narvii/post/draft/DraftListFragment$Stub;->info:Lcom/narvii/post/DraftInfo;

    iget-object p3, p3, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    const-string p4, "topic"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 392
    const-class p2, Lcom/narvii/blog/post/TopicPostActivity;

    goto :goto_0

    .line 393
    :cond_5
    iget-object p3, p1, Lcom/narvii/post/draft/DraftListFragment$Stub;->info:Lcom/narvii/post/DraftInfo;

    iget-object p3, p3, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    const-string p4, "quiz"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 394
    const-class p2, Lcom/narvii/blog/post/QuizPostActivity;

    goto :goto_0

    .line 395
    :cond_6
    iget-object p3, p1, Lcom/narvii/post/draft/DraftListFragment$Stub;->info:Lcom/narvii/post/DraftInfo;

    iget-object p3, p3, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    const-string p4, "poll"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 396
    const-class p2, Lcom/narvii/blog/post/PollPostActivity;

    goto :goto_0

    .line 397
    :cond_7
    iget-object p3, p1, Lcom/narvii/post/draft/DraftListFragment$Stub;->info:Lcom/narvii/post/DraftInfo;

    iget-object p3, p3, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    const-string p4, "image"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 398
    const-class p2, Lcom/narvii/blog/post/ImagePostActivity;

    goto :goto_0

    .line 399
    :cond_8
    iget-object p3, p1, Lcom/narvii/post/draft/DraftListFragment$Stub;->info:Lcom/narvii/post/DraftInfo;

    iget-object p3, p3, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    const-string p4, "thread"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 400
    const-class p2, Lcom/narvii/chat/post/ThreadPostNewActivity;

    goto :goto_0

    .line 401
    :cond_9
    iget-object p3, p1, Lcom/narvii/post/draft/DraftListFragment$Stub;->info:Lcom/narvii/post/DraftInfo;

    iget-object p3, p3, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    const-string p4, "profile"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 402
    const-class p2, Lcom/narvii/user/profile/post/UserProfilePostActivity;

    goto :goto_0

    .line 403
    :cond_a
    iget-object p3, p1, Lcom/narvii/post/draft/DraftListFragment$Stub;->info:Lcom/narvii/post/DraftInfo;

    iget-object p3, p3, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    const-string p4, "story"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    .line 404
    const-class p2, Lcom/narvii/blog/post/StoryPostActivity;

    :cond_b
    :goto_0
    if-nez p2, :cond_c

    .line 407
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unknown draft type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/narvii/post/draft/DraftListFragment$Stub;->info:Lcom/narvii/post/DraftInfo;

    iget-object p1, p1, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 409
    :cond_c
    new-instance p3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 410
    iget-object p1, p1, Lcom/narvii/post/draft/DraftListFragment$Stub;->info:Lcom/narvii/post/DraftInfo;

    iget-object p1, p1, Lcom/narvii/post/DraftInfo;->id:Ljava/lang/String;

    const-string p2, "draftId"

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "Source"

    const-string p2, "Drafts"

    .line 411
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    sget-object p1, Lcom/narvii/util/logging/LoggingSource;->DraftBox:Lcom/narvii/util/logging/LoggingSource;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string p2, "loggingSource"

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    invoke-virtual {p0, p3}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public rebuild()V
    .locals 9

    .line 145
    const-class v0, Lcom/narvii/blog/post/BlogPost;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 146
    iget-object v2, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    iget-object v3, v2, Lcom/narvii/post/draft/DraftListFragment;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v2, v2, Lcom/narvii/post/draft/DraftListFragment;->draftType:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/narvii/post/DraftManager;->list(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 147
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/post/DraftInfo;

    const/4 v5, 0x0

    .line 149
    iget-object v6, v3, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    const-string v7, "blog"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 150
    iget-object v4, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    iget-object v4, v4, Lcom/narvii/post/draft/DraftListFragment;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v5, v3, Lcom/narvii/post/DraftInfo;->id:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Lcom/narvii/post/DraftManager;->readPost(Ljava/lang/String;Ljava/lang/Class;)Lcom/narvii/post/PostObject;

    move-result-object v5

    goto/16 :goto_1

    .line 151
    :cond_0
    iget-object v6, v3, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    const-string v7, "link"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 152
    iget-object v4, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    iget-object v4, v4, Lcom/narvii/post/draft/DraftListFragment;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v5, v3, Lcom/narvii/post/DraftInfo;->id:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Lcom/narvii/post/DraftManager;->readPost(Ljava/lang/String;Ljava/lang/Class;)Lcom/narvii/post/PostObject;

    move-result-object v5

    goto/16 :goto_1

    .line 153
    :cond_1
    iget-object v6, v3, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    const-string v7, "item"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 154
    iget-object v4, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    iget-object v4, v4, Lcom/narvii/post/draft/DraftListFragment;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v5, v3, Lcom/narvii/post/DraftInfo;->id:Ljava/lang/String;

    const-class v6, Lcom/narvii/item/post/ItemPost;

    invoke-virtual {v4, v5, v6}, Lcom/narvii/post/DraftManager;->readPost(Ljava/lang/String;Ljava/lang/Class;)Lcom/narvii/post/PostObject;

    move-result-object v5

    goto/16 :goto_1

    .line 155
    :cond_2
    iget-object v6, v3, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    const-string v7, "topic"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 156
    iget-object v4, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    iget-object v4, v4, Lcom/narvii/post/draft/DraftListFragment;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v5, v3, Lcom/narvii/post/DraftInfo;->id:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Lcom/narvii/post/DraftManager;->readPost(Ljava/lang/String;Ljava/lang/Class;)Lcom/narvii/post/PostObject;

    move-result-object v5

    goto/16 :goto_1

    .line 157
    :cond_3
    iget-object v6, v3, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    const-string v7, "quiz"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 158
    iget-object v4, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    iget-object v4, v4, Lcom/narvii/post/draft/DraftListFragment;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v5, v3, Lcom/narvii/post/DraftInfo;->id:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Lcom/narvii/post/DraftManager;->readPost(Ljava/lang/String;Ljava/lang/Class;)Lcom/narvii/post/PostObject;

    move-result-object v5

    goto/16 :goto_1

    .line 159
    :cond_4
    iget-object v6, v3, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    const-string v7, "poll"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 160
    iget-object v4, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    iget-object v4, v4, Lcom/narvii/post/draft/DraftListFragment;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v5, v3, Lcom/narvii/post/DraftInfo;->id:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Lcom/narvii/post/DraftManager;->readPost(Ljava/lang/String;Ljava/lang/Class;)Lcom/narvii/post/PostObject;

    move-result-object v5

    goto :goto_1

    .line 161
    :cond_5
    iget-object v6, v3, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    const-string v7, "image"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 162
    iget-object v4, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    iget-object v4, v4, Lcom/narvii/post/draft/DraftListFragment;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v5, v3, Lcom/narvii/post/DraftInfo;->id:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Lcom/narvii/post/DraftManager;->readPost(Ljava/lang/String;Ljava/lang/Class;)Lcom/narvii/post/PostObject;

    move-result-object v5

    goto :goto_1

    .line 163
    :cond_6
    iget-object v6, v3, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    const-string v7, "story"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 164
    iget-object v4, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    iget-object v4, v4, Lcom/narvii/post/draft/DraftListFragment;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v5, v3, Lcom/narvii/post/DraftInfo;->id:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Lcom/narvii/post/DraftManager;->readPost(Ljava/lang/String;Ljava/lang/Class;)Lcom/narvii/post/PostObject;

    move-result-object v5

    goto :goto_1

    .line 165
    :cond_7
    iget-object v6, v3, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    const-string v7, "thread"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 167
    iget-object v6, v3, Lcom/narvii/post/DraftInfo;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "userId"

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    .line 168
    iget-object v4, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    iget-object v4, v4, Lcom/narvii/post/draft/DraftListFragment;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v5, v3, Lcom/narvii/post/DraftInfo;->id:Ljava/lang/String;

    const-class v6, Lcom/narvii/chat/post/ThreadPost;

    invoke-virtual {v4, v5, v6}, Lcom/narvii/post/DraftManager;->readPost(Ljava/lang/String;Ljava/lang/Class;)Lcom/narvii/post/PostObject;

    move-result-object v5

    goto :goto_1

    .line 170
    :cond_8
    iget-object v4, v3, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    const-string v6, "profile"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 171
    iget-object v4, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    iget-object v4, v4, Lcom/narvii/post/draft/DraftListFragment;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v5, v3, Lcom/narvii/post/DraftInfo;->id:Ljava/lang/String;

    const-class v6, Lcom/narvii/user/profile/post/UserProfilePost;

    invoke-virtual {v4, v5, v6}, Lcom/narvii/post/DraftManager;->readPost(Ljava/lang/String;Ljava/lang/Class;)Lcom/narvii/post/PostObject;

    move-result-object v5

    :cond_9
    :goto_1
    if-nez v5, :cond_a

    .line 174
    iget-object v4, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    iget-object v4, v4, Lcom/narvii/post/draft/DraftListFragment;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v5, v3, Lcom/narvii/post/DraftInfo;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/narvii/post/DraftManager;->deleteDraft(Ljava/lang/String;)V

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown draft type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 177
    :cond_a
    new-instance v4, Lcom/narvii/post/draft/DraftListFragment$Stub;

    iget-object v6, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    invoke-direct {v4, v6}, Lcom/narvii/post/draft/DraftListFragment$Stub;-><init>(Lcom/narvii/post/draft/DraftListFragment;)V

    .line 178
    iput-object v3, v4, Lcom/narvii/post/draft/DraftListFragment$Stub;->info:Lcom/narvii/post/DraftInfo;

    .line 179
    iput-object v5, v4, Lcom/narvii/post/draft/DraftListFragment$Stub;->post:Lcom/narvii/post/PostObject;

    .line 180
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 183
    :cond_b
    iput-object v1, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->list:Ljava/util/List;

    .line 184
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 185
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    .line 186
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    invoke-static {v0}, Lcom/narvii/post/draft/DraftListFragment;->access$000(Lcom/narvii/post/draft/DraftListFragment;)Landroid/support/v7/widget/AppCompatButton;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 187
    iget-object v0, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    invoke-static {v0, v4}, Lcom/narvii/post/draft/DraftListFragment;->access$102(Lcom/narvii/post/draft/DraftListFragment;Z)Z

    .line 188
    iget-object v0, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    invoke-static {v0}, Lcom/narvii/post/draft/DraftListFragment;->access$200(Lcom/narvii/post/draft/DraftListFragment;)V

    .line 189
    iget-object v0, p0, Lcom/narvii/post/draft/DraftListFragment$Adapter;->this$0:Lcom/narvii/post/draft/DraftListFragment;

    invoke-static {v0}, Lcom/narvii/post/draft/DraftListFragment;->access$000(Lcom/narvii/post/draft/DraftListFragment;)Landroid/support/v7/widget/AppCompatButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_c
    return-void
.end method
