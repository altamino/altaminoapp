.class public final Lcom/narvii/app/theme/NVThemeFragment$onAttach$1;
.super Ljava/lang/Object;
.source "NVThemeFragment.kt"

# interfaces
.implements Lcom/narvii/app/theme/NVThemeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/app/theme/NVThemeFragment;->onAttach(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/theme/NVThemeFragment;


# direct methods
.method constructor <init>(Lcom/narvii/app/theme/NVThemeFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lcom/narvii/app/theme/NVThemeFragment$onAttach$1;->this$0:Lcom/narvii/app/theme/NVThemeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChange(I)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/narvii/app/theme/NVThemeFragment$onAttach$1;->this$0:Lcom/narvii/app/theme/NVThemeFragment;

    invoke-static {v0, p1}, Lcom/narvii/app/theme/NVThemeFragment;->access$setNVThemeDirect(Lcom/narvii/app/theme/NVThemeFragment;I)V

    return-void
.end method
