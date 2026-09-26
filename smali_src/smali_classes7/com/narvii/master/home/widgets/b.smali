.class public final synthetic Lcom/narvii/master/home/widgets/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;

.field public final synthetic b:Lcom/narvii/model/Community;

.field public final synthetic c:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;Lcom/narvii/model/Community;Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/widgets/b;->a:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;

    iput-object p2, p0, Lcom/narvii/master/home/widgets/b;->b:Lcom/narvii/model/Community;

    iput-object p3, p0, Lcom/narvii/master/home/widgets/b;->c:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/master/home/widgets/b;->a:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;

    iget-object v1, p0, Lcom/narvii/master/home/widgets/b;->b:Lcom/narvii/model/Community;

    iget-object v2, p0, Lcom/narvii/master/home/widgets/b;->c:Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;

    invoke-static {v0, v1, v2, p1}, Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;->g(Lcom/narvii/master/home/widgets/ProfileLinkedCommuView;Lcom/narvii/model/Community;Lcom/narvii/master/home/widgets/ProfileLinkedCommuView$LinkedCommuAdapter;Landroid/view/View;)V

    return-void
.end method
