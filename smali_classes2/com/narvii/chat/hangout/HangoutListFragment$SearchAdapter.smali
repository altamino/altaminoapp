.class Lcom/narvii/chat/hangout/HangoutListFragment$SearchAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "HangoutListFragment.java"

# interfaces
.implements Lcom/narvii/widget/SearchBar$OnSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/hangout/HangoutListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchAdapter"
.end annotation


# instance fields
.field stated:Z

.field final synthetic this$0:Lcom/narvii/chat/hangout/HangoutListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/hangout/HangoutListFragment;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$SearchAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    .line 355
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 375
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$SearchAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    iget-object v0, p1, Lcom/narvii/chat/hangout/HangoutListFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    if-nez v0, :cond_2

    const v0, 0x7f0b0600

    .line 376
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/SearchBar;

    iput-object p2, p1, Lcom/narvii/chat/hangout/HangoutListFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 377
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$SearchAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    iget-object p1, p1, Lcom/narvii/chat/hangout/HangoutListFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    invoke-virtual {p1, p0}, Lcom/narvii/widget/SearchBar;->setOnSearchListener(Lcom/narvii/widget/SearchBar$OnSearchListener;)V

    const-string p1, "config"

    .line 378
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    if-eqz p1, :cond_0

    .line 379
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 380
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result p1

    .line 381
    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutListFragment$SearchAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    iget-object p2, p2, Lcom/narvii/chat/hangout/HangoutListFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 383
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$SearchAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    iget-object p1, p1, Lcom/narvii/chat/hangout/HangoutListFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    const p2, 0x7f0909e2

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-eqz p1, :cond_1

    const/4 p2, -0x1

    .line 385
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTextColor(I)V

    const p2, -0x7f000001

    .line 386
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 387
    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 388
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f080706

    invoke-static {p2, p3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 390
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$SearchAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    iget-object p1, p1, Lcom/narvii/chat/hangout/HangoutListFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    const p2, 0x7f0909d8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    const p2, 0x3ecccccd    # 0.4f

    .line 392
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 395
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$SearchAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    iget-object p1, p1, Lcom/narvii/chat/hangout/HangoutListFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    return-object p1
.end method

.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment$SearchAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    iget-object v0, v0, Lcom/narvii/chat/hangout/HangoutListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/search/InstantSearchListener;->onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment$SearchAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    iget-object v0, v0, Lcom/narvii/chat/hangout/HangoutListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/search/InstantSearchListener;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    .line 361
    iget-boolean p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$SearchAdapter;->stated:Z

    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 364
    iput-boolean p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$SearchAdapter;->stated:Z

    :cond_0
    return-void
.end method
