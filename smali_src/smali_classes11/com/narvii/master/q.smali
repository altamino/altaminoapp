.class public final synthetic Lcom/narvii/master/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/q;->a:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/master/q;->a:Ljava/lang/Integer;

    check-cast p1, Lcom/narvii/master/MasterAppearanceChangedListener;

    invoke-static {v0, p1}, Lcom/narvii/master/MasterTabFragment;->q(Ljava/lang/Integer;Lcom/narvii/master/MasterAppearanceChangedListener;)V

    return-void
.end method
