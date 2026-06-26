.class Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "ExternalChannelFilterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/ExternalChannelFilterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExternalChannelListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/model/ExternalSource;",
        "Lcom/narvii/model/ExternalSourceListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/ExternalSource;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/feed/ExternalChannelFilterFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/feed/ExternalChannelFilterFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;->this$0:Lcom/narvii/feed/ExternalChannelFilterFragment;

    .line 144
    invoke-direct {p0, p2}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 p1, 0x1

    .line 145
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    return-void
.end method

.method private getIconDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f08049a

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f080499

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 254
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f08049b

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 252
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f080498

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 160
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "external-source"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, "start0"

    .line 162
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 164
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/ExternalSource;",
            ">;"
        }
    .end annotation

    .line 150
    const-class v0, Lcom/narvii/model/ExternalSource;

    return-object v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 213
    instance-of v0, p1, Lcom/narvii/model/ExternalSource;

    if-eqz v0, :cond_6

    .line 214
    check-cast p1, Lcom/narvii/model/ExternalSource;

    const v0, 0x7f0b039c

    .line 215
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 216
    invoke-virtual {p1}, Lcom/narvii/model/ExternalSource;->id()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;->this$0:Lcom/narvii/feed/ExternalChannelFilterFragment;

    .line 217
    invoke-static {v0}, Lcom/narvii/feed/ExternalChannelFilterFragment;->access$000(Lcom/narvii/feed/ExternalChannelFilterFragment;)Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-static {p3, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;->this$0:Lcom/narvii/feed/ExternalChannelFilterFragment;

    .line 217
    invoke-static {p3}, Lcom/narvii/feed/ExternalChannelFilterFragment;->access$000(Lcom/narvii/feed/ExternalChannelFilterFragment;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 218
    invoke-virtual {p1}, Lcom/narvii/model/ExternalSource;->id()Ljava/lang/String;

    move-result-object p3

    const-string v0, "all"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    :goto_1
    const v0, 0x7f090562

    .line 219
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/TintButton;

    const v1, 0x7f0601be

    const v2, 0x7f060209

    if-eqz v0, :cond_3

    .line 221
    iget v3, p1, Lcom/narvii/model/ExternalSource;->type:I

    invoke-direct {p0, v3}, Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;->getIconDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz p3, :cond_2

    const v4, 0x7f0601be

    goto :goto_2

    :cond_2
    const v4, 0x7f060209

    :goto_2
    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/narvii/widget/TintButton;->setTintColor(Landroid/content/res/ColorStateList;)V

    :cond_3
    const v0, 0x7f0901c5

    .line 227
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 229
    iget-object p1, p1, Lcom/narvii/model/ExternalSource;->title:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p3, :cond_4

    goto :goto_3

    :cond_4
    const v1, 0x7f060209

    :goto_3
    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_5
    return-object p2

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;->l:Ljava/util/List;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 4

    .line 169
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;->l:Ljava/util/List;

    goto :goto_0

    .line 172
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;->l:Ljava/util/List;

    goto :goto_0

    .line 175
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;->l:Ljava/util/List;

    .line 176
    new-instance v1, Lcom/narvii/model/ExternalSource;

    invoke-direct {v1}, Lcom/narvii/model/ExternalSource;-><init>()V

    const-string v2, "all"

    .line 177
    iput-object v2, v1, Lcom/narvii/model/ExternalSource;->sourceId:Ljava/lang/String;

    const/4 v2, -0x1

    .line 178
    iput v2, v1, Lcom/narvii/model/ExternalSource;->type:I

    .line 179
    iget-object v2, p0, Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;->this$0:Lcom/narvii/feed/ExternalChannelFilterFragment;

    const v3, 0x7f0f0f03

    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/model/ExternalSource;->title:Ljava/lang/String;

    .line 180
    iget-object v2, p0, Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;->l:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 181
    iget-object v1, p0, Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 183
    :goto_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;->this$0:Lcom/narvii/feed/ExternalChannelFilterFragment;

    iget-object v1, v0, Lcom/narvii/feed/ExternalChannelFilterFragment;->filterChangeListener:Lcom/narvii/feed/ExternalChannelFilterFragment$FilterChangeListener;

    if-eqz v1, :cond_0

    instance-of v1, p3, Lcom/narvii/model/ExternalSource;

    if-eqz v1, :cond_0

    .line 241
    move-object v1, p3

    check-cast v1, Lcom/narvii/model/ExternalSource;

    invoke-virtual {v1}, Lcom/narvii/model/ExternalSource;->id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/narvii/feed/ExternalChannelFilterFragment;->access$002(Lcom/narvii/feed/ExternalChannelFilterFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 242
    invoke-virtual {p0}, Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;->notifyDataSetChanged()V

    .line 243
    iget-object v0, p0, Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;->this$0:Lcom/narvii/feed/ExternalChannelFilterFragment;

    iget-object v0, v0, Lcom/narvii/feed/ExternalChannelFilterFragment;->filterChangeListener:Lcom/narvii/feed/ExternalChannelFilterFragment$FilterChangeListener;

    invoke-interface {v0, v1}, Lcom/narvii/feed/ExternalChannelFilterFragment$FilterChangeListener;->onFilterChanged(Lcom/narvii/model/ExternalSource;)V

    .line 245
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/ExternalSourceListResponse;I)V
    .locals 0

    .line 198
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 139
    check-cast p2, Lcom/narvii/model/ExternalSourceListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/ExternalSourceListResponse;I)V

    return-void
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/ExternalSourceListResponse;",
            ">;"
        }
    .end annotation

    .line 155
    const-class v0, Lcom/narvii/model/ExternalSourceListResponse;

    return-object v0
.end method
