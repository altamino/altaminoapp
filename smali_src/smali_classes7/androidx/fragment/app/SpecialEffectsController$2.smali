.class Landroidx/fragment/app/SpecialEffectsController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/SpecialEffectsController;->a(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/FragmentStateManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/fragment/app/SpecialEffectsController;

.field final synthetic val$operation:Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;


# direct methods
.method constructor <init>(Landroidx/fragment/app/SpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/fragment/app/SpecialEffectsController$2;->this$0:Landroidx/fragment/app/SpecialEffectsController;

    .line 3
    .line 4
    iput-object p2, p0, Landroidx/fragment/app/SpecialEffectsController$2;->val$operation:Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$2;->this$0:Landroidx/fragment/app/SpecialEffectsController;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/fragment/app/SpecialEffectsController$2;->val$operation:Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$2;->this$0:Landroidx/fragment/app/SpecialEffectsController;

    .line 12
    .line 13
    iget-object v0, v0, Landroidx/fragment/app/SpecialEffectsController;->mRunningOperations:Ljava/util/ArrayList;

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/fragment/app/SpecialEffectsController$2;->val$operation:Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 19
    return-void
.end method
