.class public final synthetic Lcom/narvii/master/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/q;


# instance fields
.field public final synthetic a:Lcom/narvii/master/MasterTabFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/MasterTabFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/r;->a:Lcom/narvii/master/MasterTabFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/master/r;->a:Lcom/narvii/master/MasterTabFragment;

    check-cast p1, Landroid/widget/ImageView;

    check-cast p2, Landroid/view/View;

    check-cast p3, Ljava/lang/Integer;

    invoke-static {v0, p1, p2, p3}, Lcom/narvii/master/MasterTabFragment;->o(Lcom/narvii/master/MasterTabFragment;Landroid/widget/ImageView;Landroid/view/View;Ljava/lang/Integer;)Lw7/l0;

    move-result-object p1

    return-object p1
.end method
