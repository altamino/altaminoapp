.class final Lcom/narvii/prefs/GdprFragment$Adapter$buildCells$1;
.super Ljava/lang/Object;
.source "GdprFragment.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prefs/GdprFragment$Adapter;->buildCells(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/list/prefs/PrefsToggle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prefs/GdprFragment$Adapter;


# direct methods
.method constructor <init>(Lcom/narvii/prefs/GdprFragment$Adapter;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/prefs/GdprFragment$Adapter$buildCells$1;->this$0:Lcom/narvii/prefs/GdprFragment$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/narvii/list/prefs/PrefsToggle;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/narvii/list/prefs/PrefsToggle;

    invoke-virtual {p0, p1}, Lcom/narvii/prefs/GdprFragment$Adapter$buildCells$1;->call(Lcom/narvii/list/prefs/PrefsToggle;)V

    return-void
.end method
