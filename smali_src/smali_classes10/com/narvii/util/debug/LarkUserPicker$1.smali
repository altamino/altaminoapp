.class Lcom/narvii/util/debug/LarkUserPicker$1;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/debug/LarkUserPicker;->createAdapter()Lcom/narvii/list/NVAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/debug/LarkUserPicker;


# direct methods
.method constructor <init>(Lcom/narvii/util/debug/LarkUserPicker;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/debug/LarkUserPicker$1;->this$0:Lcom/narvii/util/debug/LarkUserPicker;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/debug/LarkUserPicker$1;->this$0:Lcom/narvii/util/debug/LarkUserPicker;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/util/debug/LarkUserPicker;->names:[Ljava/lang/String;

    .line 5
    array-length v0, v0

    .line 6
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
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0x1090003

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    sget-boolean p3, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    .line 14
    const p3, 0x1020014

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object p3

    .line 19
    .line 20
    check-cast p3, Landroid/widget/TextView;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/util/debug/LarkUserPicker$1;->this$0:Lcom/narvii/util/debug/LarkUserPicker;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/narvii/util/debug/LarkUserPicker;->names:[Ljava/lang/String;

    .line 25
    .line 26
    aget-object p1, v0, p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    :cond_0
    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2
    .param p5    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/debug/LarkUserPicker$1;->this$0:Lcom/narvii/util/debug/LarkUserPicker;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/util/debug/LarkUserPicker;->names:[Ljava/lang/String;

    .line 5
    .line 6
    aget-object v1, v1, p2

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/util/debug/LarkUserPicker;->onUserClicked(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 13
    move-result p1

    .line 14
    return p1
.end method
