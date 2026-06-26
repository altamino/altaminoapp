.class public final synthetic Lcom/narvii/list/-$$Lambda$NVListFragment$dYZH4xAZUiX4CGa2qrgLon9ViB0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/narvii/list/NVListFragment;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/list/NVListFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/list/-$$Lambda$NVListFragment$dYZH4xAZUiX4CGa2qrgLon9ViB0;->f$0:Lcom/narvii/list/NVListFragment;

    iput p2, p0, Lcom/narvii/list/-$$Lambda$NVListFragment$dYZH4xAZUiX4CGa2qrgLon9ViB0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/narvii/list/-$$Lambda$NVListFragment$dYZH4xAZUiX4CGa2qrgLon9ViB0;->f$0:Lcom/narvii/list/NVListFragment;

    iget v1, p0, Lcom/narvii/list/-$$Lambda$NVListFragment$dYZH4xAZUiX4CGa2qrgLon9ViB0;->f$1:I

    invoke-virtual {v0, v1}, Lcom/narvii/list/NVListFragment;->lambda$onViewCreated$0$NVListFragment(I)V

    return-void
.end method
