.class Lcom/narvii/util/diagnosis/DiagnosisFragment$1;
.super Ljava/lang/Object;
.source "DiagnosisFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/diagnosis/DiagnosisFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/diagnosis/DiagnosisFragment;


# direct methods
.method constructor <init>(Lcom/narvii/util/diagnosis/DiagnosisFragment;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/narvii/util/diagnosis/DiagnosisFragment$1;->this$0:Lcom/narvii/util/diagnosis/DiagnosisFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisFragment$1;->this$0:Lcom/narvii/util/diagnosis/DiagnosisFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Boston is one of the oldest cities in the United States, founded on the Shawmut Peninsula in 1630 by Puritan settlers from England. It was the scene of several key events of the American Revolution, such as the Boston Massacre, the Boston Tea Party, the Battle of Bunker Hill, and the Siege of Boston. Upon U.S. independence from Great Britain, it continued to be an important port and manufacturing hub as well as a center for education and culture. The city has expanded beyond the original peninsula through land reclamation and municipal annexation. Its rich history attracts many tourists, with Faneuil Hall alone drawing more than 20 million visitors per year. Boston\'s many firsts include the United States\' first public or state school (Boston Latin School, 1635), first subway system (Tremont Street Subway, 1897), and first public park (Boston Common, 1634)."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method
