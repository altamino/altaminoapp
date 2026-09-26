.class final Landroidx/compose/ui/node/ModifierLocalConsumerEntity$notifyConsumerOfChanges$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/node/ModifierLocalConsumerEntity;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/ui/node/ModifierLocalConsumerEntity;


# direct methods
.method constructor <init>(Landroidx/compose/ui/node/ModifierLocalConsumerEntity;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/node/ModifierLocalConsumerEntity$notifyConsumerOfChanges$1;->this$0:Landroidx/compose/ui/node/ModifierLocalConsumerEntity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifierLocalConsumerEntity$notifyConsumerOfChanges$1;->invoke()V

    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/ModifierLocalConsumerEntity$notifyConsumerOfChanges$1;->this$0:Landroidx/compose/ui/node/ModifierLocalConsumerEntity;

    .line 2
    invoke-virtual {v0}, Landroidx/compose/ui/node/ModifierLocalConsumerEntity;->e()Landroidx/compose/ui/modifier/ModifierLocalConsumer;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/node/ModifierLocalConsumerEntity$notifyConsumerOfChanges$1;->this$0:Landroidx/compose/ui/node/ModifierLocalConsumerEntity;

    invoke-interface {v0, v1}, Landroidx/compose/ui/modifier/ModifierLocalConsumer;->z0(Landroidx/compose/ui/modifier/ModifierLocalReadScope;)V

    return-void
.end method
