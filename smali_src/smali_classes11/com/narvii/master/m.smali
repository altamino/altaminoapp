.class public final synthetic Lcom/narvii/master/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lai/medialab/medialabanalytics/UidListener;


# instance fields
.field public final synthetic a:Lcom/narvii/master/MasterActivity;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/MasterActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/m;->a:Lcom/narvii/master/MasterActivity;

    iput-object p2, p0, Lcom/narvii/master/m;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onUidReady(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/master/m;->a:Lcom/narvii/master/MasterActivity;

    iget-object v1, p0, Lcom/narvii/master/m;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/narvii/master/MasterActivity;->t(Lcom/narvii/master/MasterActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
