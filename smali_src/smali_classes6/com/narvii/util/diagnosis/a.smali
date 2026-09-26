.class public final synthetic Lcom/narvii/util/diagnosis/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/util/diagnosis/DiagnosisFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/util/diagnosis/DiagnosisFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/diagnosis/a;->a:Lcom/narvii/util/diagnosis/DiagnosisFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/util/diagnosis/a;->a:Lcom/narvii/util/diagnosis/DiagnosisFragment;

    invoke-static {v0}, Lcom/narvii/util/diagnosis/DiagnosisFragment;->n(Lcom/narvii/util/diagnosis/DiagnosisFragment;)V

    return-void
.end method
