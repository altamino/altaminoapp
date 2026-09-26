.class public final synthetic Lcom/narvii/master/theme/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/master/MasterAppearance;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/MasterAppearance;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/theme/c;->a:Lcom/narvii/master/MasterAppearance;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/master/theme/c;->a:Lcom/narvii/master/MasterAppearance;

    check-cast p1, Lcom/narvii/master/theme/MasterThemeListener;

    invoke-static {v0, p1}, Lcom/narvii/master/theme/MasterThemeService$sendMasterThemeRequest$1;->a(Lcom/narvii/master/MasterAppearance;Lcom/narvii/master/theme/MasterThemeListener;)V

    return-void
.end method
