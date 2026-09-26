.class Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/profile/UserProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TopAdapter"
.end annotation


# instance fields
.field private final headerTouchListener:Landroid/view/View$OnTouchListener;

.field final synthetic this$0:Lcom/narvii/user/profile/UserProfileFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/user/profile/UserProfileFragment$TopAdapter$1;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, p0}, Lcom/narvii/user/profile/UserProfileFragment$TopAdapter$1;-><init>(Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;)V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;->headerTouchListener:Landroid/view/View$OnTouchListener;

    .line 13
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
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    .line 4
    .line 5
    const v0, 0x7f0d077b

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p2}, Lcom/narvii/user/profile/UserProfileFragment;->D(Lcom/narvii/user/profile/UserProfileFragment;Landroid/view/View;)V

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/user/profile/UserProfileFragment;->M(Lcom/narvii/user/profile/UserProfileFragment;)V

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/narvii/user/profile/UserProfileFragment;->x(Lcom/narvii/user/profile/UserProfileFragment;)Landroid/view/View;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;->headerTouchListener:Landroid/view/View$OnTouchListener;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$TopAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lcom/narvii/user/profile/UserProfileFragment;->x(Lcom/narvii/user/profile/UserProfileFragment;)Landroid/view/View;

    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method
