.class Lcom/narvii/user/picker/MultiUserPickerFragment$SearchAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$SearchAdapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
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

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$SearchAdapter;->view:Landroid/view/View;

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    .line 7
    const p1, 0x7f0d06b7

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$SearchAdapter;->view:Landroid/view/View;

    .line 14
    .line 15
    iget-object p2, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$SearchAdapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    .line 16
    .line 17
    .line 18
    const p3, 0x7f0a0e76

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    check-cast p1, Landroid/widget/LinearLayout;

    .line 25
    .line 26
    .line 27
    invoke-static {p2, p1}, Lcom/narvii/user/picker/MultiUserPickerFragment;->x(Lcom/narvii/user/picker/MultiUserPickerFragment;Landroid/widget/LinearLayout;)V

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$SearchAdapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    .line 30
    .line 31
    iget-object p2, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$SearchAdapter;->view:Landroid/view/View;

    .line 32
    .line 33
    .line 34
    const p3, 0x7f0a0c92

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    check-cast p2, Lcom/narvii/widget/SearchBar;

    .line 41
    .line 42
    .line 43
    invoke-static {p1, p2}, Lcom/narvii/user/picker/MultiUserPickerFragment;->v(Lcom/narvii/user/picker/MultiUserPickerFragment;Lcom/narvii/widget/SearchBar;)V

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$SearchAdapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lcom/narvii/user/picker/MultiUserPickerFragment;->u(Lcom/narvii/user/picker/MultiUserPickerFragment;)Lcom/narvii/widget/SearchBar;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p0}, Lcom/narvii/widget/SearchBar;->setOnSearchListener(Lcom/narvii/widget/SearchBar$OnSearchListener;)V

    .line 53
    .line 54
    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$SearchAdapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    .line 55
    .line 56
    iget-object p2, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$SearchAdapter;->view:Landroid/view/View;

    .line 57
    .line 58
    .line 59
    const p3, 0x7f0a0ca0

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object p2

    .line 64
    .line 65
    .line 66
    invoke-static {p1, p2}, Lcom/narvii/user/picker/MultiUserPickerFragment;->w(Lcom/narvii/user/picker/MultiUserPickerFragment;Landroid/view/View;)V

    .line 67
    .line 68
    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$SearchAdapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    .line 69
    .line 70
    iget-object p2, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$SearchAdapter;->view:Landroid/view/View;

    .line 71
    .line 72
    .line 73
    const p3, 0x7f0a0cab

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    move-result-object p2

    .line 78
    .line 79
    check-cast p2, Landroid/widget/HorizontalScrollView;

    .line 80
    .line 81
    iput-object p2, p1, Lcom/narvii/user/picker/MultiUserPickerFragment;->thumbContainerScroller:Landroid/widget/HorizontalScrollView;

    .line 82
    .line 83
    :cond_0
    iget-object p1, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$SearchAdapter;->view:Landroid/view/View;

    .line 84
    return-object p1
.end method

.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$SearchAdapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/user/picker/MultiUserPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/narvii/search/InstantSearchListener;->onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/picker/MultiUserPickerFragment$SearchAdapter;->this$0:Lcom/narvii/user/picker/MultiUserPickerFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/user/picker/MultiUserPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/narvii/search/InstantSearchListener;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    .line 8
    return-void
.end method
