package qa;

import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: loaded from: classes9.dex */
public class g<F extends Serializable, S extends Serializable> implements Serializable {
    private F firstObject;
    private S secondObject;

    public F a() {
        return this.firstObject;
    }

    public S b() {
        return this.secondObject;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        g gVar = (g) obj;
        return Objects.equals(this.firstObject, gVar.firstObject) && Objects.equals(this.secondObject, gVar.secondObject);
    }

    public int hashCode() {
        return Objects.hash(this.firstObject, this.secondObject);
    }

    public String toString() {
        return "{" + this.firstObject + ", " + this.secondObject + "}";
    }

    public g(F f, S s) {
        this.firstObject = f;
        this.secondObject = s;
    }
}
