import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;
import java.util.Map;
import static junit.framework.Assert.assertEquals;

@ExtendWith(MockitoExtension.class)
public class MainItemsTest {

    @Mock
    Map<Integer, String> mockmap;

    @Test
    public void getItem() {

        Mockito.doReturn("You are staying in the cosmic port.You can " +
                "join the board of the ship. Are you ready join this cosmic ship?").when(mockmap).get(1);
        assertEquals("You are staying in the cosmic port.You can " +
                "join the board of the ship. Are you ready join this cosmic ship?", mockmap.get(1));
    }
}

