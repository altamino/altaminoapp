.class public final synthetic Lcom/narvii/master/-$$Lambda$MasterTabFragment$325n1G50u3y0Q4JlLlcSXUezfzI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field private final synthetic f$0:Lcom/narvii/master/MasterTabFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/MasterTabFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/-$$Lambda$MasterTabFragment$325n1G50u3y0Q4JlLlcSXUezfzI;->f$0:Lcom/narvii/master/MasterTabFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/-$$Lambda$MasterTabFragment$325n1G50u3y0Q4JlLlcSXUezfzI;->f$0:Lcom/narvii/master/MasterTabFragment;

    check-cast p1, Landroid/widget/ImageView;

    check-cast p2, Landroid/view/View;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/master/MasterTabFragment;->lambda$onViewCreated$1$MasterTabFragment(Landroid/widget/ImageView;Landroid/view/View;Ljava/lang/Integer;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
