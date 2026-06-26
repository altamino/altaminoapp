.class public Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "ChatMemberPickerFragment.java"

# interfaces
.implements Lcom/narvii/widget/SearchBar$OnSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/ChatMemberPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SearchAdapter"
.end annotation


# instance fields
.field private searchBar:Lcom/narvii/widget/SearchBar;

.field private searchIcon:Landroid/view/View;

.field final synthetic this$0:Lcom/narvii/chat/ChatMemberPickerFragment;

.field private thumbContainer:Landroid/view/ViewGroup;

.field private thumbContainerScroller:Landroid/widget/HorizontalScrollView;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/ChatMemberPickerFragment;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->this$0:Lcom/narvii/chat/ChatMemberPickerFragment;

    .line 123
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->updateThumbViews()V

    return-void
.end method

.method private updateThumbViews()V
    .locals 6

    .line 165
    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->thumbContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->this$0:Lcom/narvii/chat/ChatMemberPickerFragment;

    iget-object v1, v0, Lcom/narvii/chat/ChatMemberPickerFragment;->adapter:Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/narvii/chat/ChatMemberPickerFragment;->showSearchBar()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->thumbContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 168
    iget-object v1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->thumbContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 169
    iget-object v1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->this$0:Lcom/narvii/chat/ChatMemberPickerFragment;

    iget-object v1, v1, Lcom/narvii/chat/ChatMemberPickerFragment;->adapter:Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;

    iget-object v1, v1, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 170
    iget-object v1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->this$0:Lcom/narvii/chat/ChatMemberPickerFragment;

    iget-object v1, v1, Lcom/narvii/chat/ChatMemberPickerFragment;->adapter:Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;

    iget-object v1, v1, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 171
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->this$0:Lcom/narvii/chat/ChatMemberPickerFragment;

    iget-object v1, v1, Lcom/narvii/chat/ChatMemberPickerFragment;->adapter:Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;

    iget-object v1, v1, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 172
    iget-object v1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->this$0:Lcom/narvii/chat/ChatMemberPickerFragment;

    iget-object v3, v1, Lcom/narvii/chat/ChatMemberPickerFragment;->adapter:Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;

    iget-object v3, v3, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/User;

    invoke-virtual {v1, v3}, Lcom/narvii/chat/ChatMemberPickerFragment;->isUserEnableInSearchBar(Lcom/narvii/model/User;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 175
    :cond_2
    new-instance v1, Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/narvii/widget/ThumbImageView;-><init>(Landroid/content/Context;)V

    .line 176
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    .line 177
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41700000    # 15.0f

    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v4

    float-to-int v4, v4

    .line 178
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 179
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v3, v5}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    .line 180
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 181
    iget-object v3, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->this$0:Lcom/narvii/chat/ChatMemberPickerFragment;

    iget-object v3, v3, Lcom/narvii/chat/ChatMemberPickerFragment;->adapter:Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;

    iget-object v3, v3, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/User;

    invoke-virtual {v3}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 182
    invoke-virtual {v1, v4}, Lcom/narvii/widget/NVImageView;->setCornerRadius(I)V

    const v3, 0x7f0901fc

    .line 183
    iget-object v4, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->this$0:Lcom/narvii/chat/ChatMemberPickerFragment;

    iget-object v4, v4, Lcom/narvii/chat/ChatMemberPickerFragment;->adapter:Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;

    iget-object v4, v4, Lcom/narvii/chat/ChatMemberPickerFragment$Adapter;->users:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 184
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const-string v4, "#cccccc"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcom/narvii/widget/NVImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    new-instance v3, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter$1;

    invoke-direct {v3, p0, v1}, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter$1;-><init>(Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;Lcom/narvii/widget/ThumbImageView;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v3, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->thumbContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 198
    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->thumbContainerScroller:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/narvii/chat/-$$Lambda$ChatMemberPickerFragment$SearchAdapter$7rQ7iCr38Xw51VjkJgvLuzdMx_c;

    invoke-direct {v1, p0}, Lcom/narvii/chat/-$$Lambda$ChatMemberPickerFragment$SearchAdapter$7rQ7iCr38Xw51VjkJgvLuzdMx_c;-><init>(Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 201
    :cond_4
    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->searchIcon:Landroid/view/View;

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    .line 202
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 205
    :cond_5
    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->searchIcon:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 206
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_2
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

    return-object p0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 153
    iget-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->view:Landroid/view/View;

    if-nez p1, :cond_0

    const p1, 0x7f0b0603

    .line 154
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->view:Landroid/view/View;

    .line 155
    iget-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->view:Landroid/view/View;

    const p2, 0x7f090b71

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->thumbContainer:Landroid/view/ViewGroup;

    .line 156
    iget-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->view:Landroid/view/View;

    const p2, 0x7f0909ca

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/SearchBar;

    iput-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 157
    iget-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->searchBar:Lcom/narvii/widget/SearchBar;

    invoke-virtual {p1, p0}, Lcom/narvii/widget/SearchBar;->setOnSearchListener(Lcom/narvii/widget/SearchBar$OnSearchListener;)V

    .line 158
    iget-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->view:Landroid/view/View;

    const p2, 0x7f0909d8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->searchIcon:Landroid/view/View;

    .line 159
    iget-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->view:Landroid/view/View;

    const p2, 0x7f0909e3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/HorizontalScrollView;

    iput-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->thumbContainerScroller:Landroid/widget/HorizontalScrollView;

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->view:Landroid/view/View;

    return-object p1
.end method

.method public synthetic lambda$updateThumbViews$0$ChatMemberPickerFragment$SearchAdapter()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->thumbContainerScroller:Landroid/widget/HorizontalScrollView;

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x11

    goto :goto_0

    :cond_0
    const/16 v1, 0x42

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    return-void
.end method

.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->this$0:Lcom/narvii/chat/ChatMemberPickerFragment;

    iget-object v0, v0, Lcom/narvii/chat/ChatMemberPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/search/InstantSearchListener;->onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/narvii/chat/ChatMemberPickerFragment$SearchAdapter;->this$0:Lcom/narvii/chat/ChatMemberPickerFragment;

    iget-object v0, v0, Lcom/narvii/chat/ChatMemberPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/search/InstantSearchListener;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    return-void
.end method
