.class Lcom/narvii/user/picker/MultiUserPickerFragment$SearchAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "MultiUserPickerFragment.java"

# interfaces
.implements Lcom/narvii/widget/SearchBar$OnSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/picker/MultiUserPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/narvii/user/picker/MultiUserPickerFragment;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$SearchAdapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    .line 358
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

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

    .line 388
    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$SearchAdapter;->view:Landroid/view/View;

    if-nez p1, :cond_0

    const p1, 0x7f0b0603

    .line 389
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$SearchAdapter;->view:Landroid/view/View;

    .line 390
    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$SearchAdapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    iget-object p2, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$SearchAdapter;->view:Landroid/view/View;

    const p3, 0x7f090b71

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-static {p1, p2}, Lcom/narvii/user/picker/MultiUserPickerFragment;->access$202(Lcom/narvii/user/picker/MultiUserPickerFragment;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 391
    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$SearchAdapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    iget-object p2, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$SearchAdapter;->view:Landroid/view/View;

    const p3, 0x7f0909ca

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/SearchBar;

    invoke-static {p1, p2}, Lcom/narvii/user/picker/MultiUserPickerFragment;->access$302(Lcom/narvii/user/picker/MultiUserPickerFragment;Lcom/narvii/widget/SearchBar;)Lcom/narvii/widget/SearchBar;

    .line 392
    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$SearchAdapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    invoke-static {p1}, Lcom/narvii/user/picker/MultiUserPickerFragment;->access$300(Lcom/narvii/user/picker/MultiUserPickerFragment;)Lcom/narvii/widget/SearchBar;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/narvii/widget/SearchBar;->setOnSearchListener(Lcom/narvii/widget/SearchBar$OnSearchListener;)V

    .line 393
    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$SearchAdapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    iget-object p2, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$SearchAdapter;->view:Landroid/view/View;

    const p3, 0x7f0909d8

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/user/picker/MultiUserPickerFragment;->access$402(Lcom/narvii/user/picker/MultiUserPickerFragment;Landroid/view/View;)Landroid/view/View;

    .line 394
    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$SearchAdapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    iget-object p2, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$SearchAdapter;->view:Landroid/view/View;

    const p3, 0x7f0909e3

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/HorizontalScrollView;

    iput-object p2, p1, Lcom/narvii/user/picker/MultiUserPickerFragment;->thumbContainerScroller:Landroid/widget/HorizontalScrollView;

    .line 396
    :cond_0
    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$SearchAdapter;->view:Landroid/view/View;

    return-object p1
.end method

.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$SearchAdapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    iget-object v0, v0, Lcom/narvii/user/picker/MultiUserPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/search/InstantSearchListener;->onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$SearchAdapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    iget-object v0, v0, Lcom/narvii/user/picker/MultiUserPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/search/InstantSearchListener;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    return-void
.end method
